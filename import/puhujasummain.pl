#!/usr/bin/perl -w

use strict;

use utf8;

use JSON;
use DBI;

local $/;

use PuhDB;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";

my $Conn = PuhDB::conn();

# lista puhujista, joilla saattaisi olla uusia puheita
my @speakers = @{$Conn->selectcol_arrayref("
  SELECT
    DISTINCT speaker_id
  FROM
    action
  ORDER BY 1
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
    AND a.speaker_id=?
  GROUP BY 2
  ORDER BY 1 DESC
");
my $wordstats_by_year_query = $Conn->prepare("
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
    AND a.speaker_id=?
    AND a.year=?
  GROUP BY 2
  ORDER BY 1 DESC
");

my $actionstats_query = $Conn->prepare("
  SELECT
    COUNT(*)
  FROM
    action
  WHERE
    speaker_id=?
");


sub find_top_words {
  my ($speaker_id, $year) = @_;

  my @words;

  my $max = 0;

  my $q;
  if($year) {
    $wordstats_by_year_query->execute($speaker_id, $year);
    $q = $wordstats_by_year_query;
  } else {
    $q = $wordstats_query->execute($speaker_id);
    $q = $wordstats_query;
  }

  while(my $r = $q->fetchrow_hashref) {
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

  @words = sort { $a->[0] cmp $b->[0] } @words;

  # return (weight => $weight, top_words => \@words);
  return \@words;
}

sub find_action_count {
  my ($speaker_id) = @_;

  $actionstats_query->execute($speaker_id);
  return $actionstats_query->fetchrow_arrayref();
}

my $write = $Conn->prepare("UPDATE speaker SET details_c=? WHERE id=?");


for my $speaker_id (@speakers) {

  print "$speaker_id... ";

  my ($weight, $words) = find_top_words($speaker_id);

  my %words_by_year;
  my @years = @{$Conn->selectcol_arrayref("SELECT DISTINCT year FROM action WHERE speaker_id=? ORDER BY 1", undef, $speaker_id)};
  for my $year (@years) {
    print "[$year] ";
    $words_by_year{$year} = find_top_words($speaker_id, $year);
  }

  my $details = {
    top_words => find_top_words($speaker_id),
    top_words_by_year => \%words_by_year,
    action_count => find_action_count($speaker_id),
  };

  $write->execute(JSON::to_json($details, {canonical => 1}), $speaker_id);

  print "\n";
#  print "http://127.0.0.1:8099/edustaja/$speaker_id-foo\n";

}
