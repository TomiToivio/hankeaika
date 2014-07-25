#!/usr/bin/perl -w

use strict;

use utf8;

use JSON;
use DBI;
use Carp;

use PuhDB;

$SIG{__DIE__} = sub { Carp::confess @_ };

local $/;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";
my $input = JSON::from_json(<STDIN>);

#use Data::Dumper;
#print Dumper($input->[0]{text});
#exit;

sub convert_doc_id {
  my ($doc_id) = @_;

  $doc_id =~ s/^PTK //;
  $doc_id =~ s/ vp$//;
  $doc_id =~ s!/!-!g;

  return $doc_id;
}

my $Conn = PuhDB::conn();

my %speakerIds;
for(@{$Conn->selectall_arrayref("SELECT id, number FROM speaker")}) {
    $speakerIds{$_->[1]} = $_->[0];
}

my $speakerSth = $Conn->prepare("INSERT INTO speaker (id,first_name,last_name,number,`group`) VALUES (NULL,?,?,?,?)");
my $documentSth = $Conn->prepare("INSERT INTO document (weight,title,link,details_c,id,date,year) VALUES (0,0,'',?,?,?,?)");
my $subjectSth = $Conn->prepare("INSERT INTO subject (id,action_count,subject,doc_id) VALUES (NULL,0,?,?)");
my $actionSth = $Conn->prepare("INSERT INTO action (id,text,lang,pos,abs_pos,date,doc_id,speaker_id,subject_id,year,speaker_group,speaker_last_name,speaker_first_name,speaker_number)
                                            VALUES (NULL,?, ?,   ?,  ?,      ?,   ?,     ?,         ?,         ?,   ?,            ?,                ?,                 ?)");

my $default_document_details = '{"speakers":[],"action_count":0,"subject_count":0,"top_words":[]}';


if(not $input->[0]) {
  # print "Dokumentti: (ei puheenvuoroja, skipataan)\n";
  exit;
}

my $docId = convert_doc_id($input->[0]{docId});
my $date = $input->[0]{date} || '0000-00-00';
$input->[0]{docId} =~ m"/(\d{4})";
my $year = $1; # huom! voi olla eri vuosi kuin $datessa, jos vaalivuosi

print "Dokumentti: '$input->[0]{docId}' --> '$docId'\n";

if($Conn->selectrow_array("SELECT id FROM document WHERE id=?", undef, $docId)) {
  print "=> on jo kannassa. Lopetetaan.\n";
  exit;
}


$documentSth->execute($default_document_details, $docId, $date, $year);

my %actionCounts;

my $prevSubj = 'X';
my $subjectId = 0;
for my $a(@$input) {
  # $a: {"speaker":{"number":"571","firstName":"Jyrki","lastName":"Katainen"},"text":"...", ...}
  my $speakerId = $speakerIds{$a->{speaker}{number}};


  if($speakerId) {
    # koetetaan varmistaa, että ministereidenkin puoluekanta tulee merkittyä
    $a->{speaker}{group} ||= $Conn->selectrow_array("SELECT speaker_group FROM action WHERE speaker_id=? AND LENGTH(speaker_group)>0 ORDER BY date DESC LIMIT 1", undef, $speakerId);
  } else {
      unless($a->{speaker}{number} =~ /^[1-9]\d{0,9}/) {
        $a->{speaker}{number} = undef;
      }
    $speakerSth->execute(@{$a->{speaker}}{qw/firstName lastName number group/});
    $speakerId = $speakerIds{$a->{speaker}{number}} = $Conn->selectrow_array("SELECT LAST_INSERT_ID()");
    print "    Lisattiin speaker[$speakerId] $a->{speaker}{lastName}\n";
  }

  if($a->{subject} ne $prevSubj) {
    $subjectSth->execute($a->{subject}, $docId);
    $subjectId = $Conn->selectrow_array("SELECT LAST_INSERT_ID()");
    $actionCounts{$subjectId} = 0;
    print "  Aihe[$subjectId]: $a->{subject}\n";
    $prevSubj = $a->{subject};
  }

  print "    Puhuja: $a->{speaker}{lastName}\n";

  $actionCounts{$subjectId}++;

  $actionSth->execute(
      @$a{qw/text lang pos absPos/},
      $date,
      $docId,
      $speakerId,
      $subjectId,
      $year,
      $a->{speaker}{group},
      $a->{speaker}{lastName},
      $a->{speaker}{firstName},
      $a->{speaker}{number},
  );
}

# päivitetään subject.action_count
for my $subject_id (keys %actionCounts) {
  $Conn->do("UPDATE subject SET action_count=? WHERE id=?", undef, $actionCounts{$subject_id}, $subject_id);
}
