#!/usr/bin/perl -w

use strict;

use utf8;

use JSON;
use DBI;
use LWP;
use Encode;

use PuhDB;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";
local $/;

my $Ua = LWP::UserAgent->new;
# die "disabloi ensin word-taulun indeksit!";
sub notFound {
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


  return $wordCounts->{notFound};
  
}

my $Conn = PuhDB::conn();


my @words = @{$Conn->selectcol_arrayref("SELECT word FROM word WHERE known IS NULL ORDER BY word LIMIT 10000")};
exit 1 if @words==0;

my $updateWord = $Conn->prepare("UPDATE word SET known=? WHERE word=?");

my $notFound = notFound(join(" ", @words));

my $n=0;
for my $w (@words) {
    if($n % 100 == 0) {
      print "$n\r";
    }
    $n++;
    if($notFound->{$w}) {
      $updateWord->execute(0, $w);
    } else {
      $updateWord->execute(1, $w);
    }
}
print "$n\n";

