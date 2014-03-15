#!/usr/bin/perl -w

use strict;

use utf8;

use JSON;
use DBI;

use PuhDB;


local $/;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";


my $Conn = PuhDB::conn();

# lista ei-käsitellyistä dokumenteista
my @docs = @ARGV ? @ARGV : @{$Conn->selectcol_arrayref("
  SELECT
    id
  FROM
    document
  WHERE
    LENGTH(details_c)=65
  ORDER BY date, id
")};

my $wordstats_query = $Conn->prepare("
  SELECT
    SUM(n) AS Weight,
    word
  FROM
    word_occurrence o,
    action a,
    word w
  WHERE
    o.action_id=a.id
    AND o.word_id=w.id
    AND w.stop != 'Stop'
    AND a.doc_id=?
  GROUP BY 2
  ORDER BY 1 DESC
  LIMIT 20
");

my $speakerstats_query = $Conn->prepare("
  SELECT
    speaker_id,
    s.number AS SpeakerNumber,
    speaker_first_name,
    speaker_last_name,
    speaker_group,
    SUM(LENGTH(text)) As Weight
  FROM
    action a,
    speaker s
  WHERE
    s.id=speaker_id
    AND doc_id=?
  GROUP BY 1
  ORDER BY Weight DESC
");

my $actionstats_query = $Conn->prepare("
  SELECT
    COUNT(DISTINCT subject_id) AS subject_count,
    COUNT(*) AS action_count
  FROM
    action
  WHERE doc_id=?
");

sub find_top_words {
  my ($doc_id) = @_;

  my @words;

  my $max = 0;
  $wordstats_query->execute($doc_id);
  while(my $r = $wordstats_query->fetchrow_hashref) {
    push @words, [$r->{word}, $r->{Weight}];
    $max = $r->{Weight} if $r->{Weight} > $max;
  }

  my $weight = 0;
  if($max) {
    $weight = $max / 4.5;
    for(@words) {
      $_->[1] = 1+sprintf("%d", $_->[1]/$weight);
    }
  }

  return ($weight, \@words);
}
sub find_speakers {
  my ($doc_id) = @_;

  my @speakers;

  my $max = 0;
  $speakerstats_query->execute($doc_id);
  while(my $r = $speakerstats_query->fetchrow_hashref) {
     $r->{group} ||= ''; # TMP!
    push @speakers, {
      id => $r->{speaker_id},
      number => $r->{SpeakerNumber},
      first_name => $r->{speaker_first_name},
      last_name => $r->{speaker_last_name},
      group => $r->{speaker_group},
      Weight => $r->{Weight},
    };

    $max = $r->{Weight} if $r->{Weight} > $max;
  }

  my $weight = 0;
  if($max) {
    $weight = $max / 4.5;
    for(@speakers) {
      $_->{Weight} = 1+sprintf("%d", $_->{Weight}/$weight);
    }
  }

  @speakers = sort { $b->{Weight} <=> $a->{Weight} } @speakers;

  return \@speakers;
}

sub find_action_stats {
  my ($doc_id) = @_;
  
  $actionstats_query->execute($doc_id);
  my ($subject_count, $action_count) = $actionstats_query->fetchrow_array();
  return ($subject_count, $action_count);
}


my $write = $Conn->prepare("UPDATE document SET weight=?, details_c=? WHERE id=?");

for my $doc_id (@docs) {

  print "$doc_id...";

  my ($weight, $words) = find_top_words($doc_id);
  my $speakers = find_speakers($doc_id);

  my ($subject_count, $action_count) = find_action_stats($doc_id);

  my $details = {
    speakers => $speakers,
    top_words => $words,
    subject_count => $subject_count,
    action_count => $action_count,
  };

  $write->execute($weight, JSON::to_json($details, {canonical => 1}), $doc_id);

  print "\n";
}

