#!/usr/bin/perl -w

use strict;

use utf8;

use JSON;
use DBI;
use LWP;
use Encode;
use Data::Dumper;

use PuhDB;

local $/;

my $Ua = LWP::UserAgent->new;
# die "disabloi ensin word-taulun indeksit!";
sub infList {
  my ($text) = @_;


  my $resp = $Ua->post('http://perusta.kansanmuisti.fi:8100/perusta', {
    format => 'json',
    text => $text
  });

  if(!$resp->is_success) {
    print STDERR "perusta palautti virheen! Teksti:\n$text\n" . $resp->as_string;
    exit 1;
  }

  my $content = $resp->content;
  Encode::_utf8_on($content);

  my $wordCounts = JSON::from_json($content);

  return { %{$wordCounts->{ok}} };
  }

my $Conn = PuhDB::conn();

my %wordIds;
print "load old words...\n";
my $i=0;
for(@{$Conn->selectall_arrayref("SELECT id, word FROM word")}) {
  $wordIds{$_->[1]} = $_->[0];
  $i++;
  print "$i\n" unless $i % 10000;
}
print "\nfind actions...\n";
my $getActions = $Conn->prepare("SELECT id, text, date, speaker_id FROM action WHERE words_found IS NULL ORDER BY id");
$getActions->execute;
my $addWord = $Conn->prepare("INSERT INTO word (id, word) VALUES (NULL, ?)");
my $addOccurrence = $Conn->prepare("INSERT INTO word_occurrence (word_id, action_id, speaker_id, n, month) VALUES (?, ?, ?, ?, PERIOD_DIFF(DATE_FORMAT(?,'%Y%m'),199901))");

my $n = 1;
while(my $a = $getActions->fetchrow_hashref) {
  print "[$n] Action #$a->{id}...\n";
  
  my $wordCounts = infList($a->{text});

  my $total = 0;
  for my $w (keys %$wordCounts) {
    if((length($w))>5) {

    if(($w =~ /\d/)==0) {
    print "  Word: '$w'\n";

    if(!$wordIds{$w}) {
      $addWord->execute($w);
      $wordIds{$w} = $Conn->selectrow_array("SELECT LAST_INSERT_ID()");
    }

    $addOccurrence->execute($wordIds{$w}, $a->{id}, $a->{speaker_id}, $wordCounts->{$w}, $a->{date});
    $total += $wordCounts->{$w};
  }
}
  }
  print "$total words.\n";
  $Conn->do("UPDATE action SET words_found = ? WHERE id=?", undef, $total, $a->{id});
  $n++;
}
