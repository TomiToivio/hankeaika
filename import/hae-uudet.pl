#!/usr/bin/perl -w

use strict;

use utf8;

use JSON;
use DBI;

use LWP;

use PuhDB;


local $/;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";


sub mysystem {
  my ($cmd) = @_;
  print "CMD: $cmd\n";
  my $ret = system($cmd);
  if($ret) {
    die "CMD FAILED!";
  }
}

sub import {
  my ($sgml_url) = @_;

  print "" . localtime() . "IMPORT: $sgml_url\n";

  mysystem("/usr/local/bin/node sgml-parser.js '$sgml_url' | perl kirjoitin.pl");
    
  print "" . localtime() . " - AFTER IMPORT: $sgml_url\n";
    
}

my $Conn = PuhDB::conn();


my $docs = $Conn->selectall_hashref("SELECT id FROM document", 'id');

my $Ua = LWP::UserAgent->new;
my $resp = $Ua->get('http://www.eduskunta.fi/triphome/bin/akx3000.sh?kanta=utaptk&LYH=LYH-PTK&haku=PTKSUP&kieli=su&VPVUOSI%3E=1999');

if(not $resp->is_success) {
  die $resp->status_line;
}

# <a href="/triphome/bin/akxptk.sh?{KEY}=PTK+58/2011+vp"> HTML </a>

my $content = $resp->content;

# print STDERR $content;

my $did_something = 0;

while($content =~ m!<a href="(/triphome/bin/akxptk\.sh\?\{KEY\}=PTK\+(\w+)/(\d\d\d\d)\+vp)"> HTML </a>!g) {

  my $id = "$2-$3";
  my $slashId = "$2/$3";
  if($docs->{$id}) {
    last;
  }

  my $url = "http://www.eduskunta.fi$1";
  my $resp2 = $Ua->get($url);

  if(!$resp2->is_success) {
    die $resp->status_line;
  }

  if($resp2->content =~ m!<a href="(/faktatmp/utatmp/akxtmp/ptk_\w+.sgm)"> &raquo;Rakenteinen asiakirja</a>!) {
    import("http://www.eduskunta.fi$1");

    # päivitetään dokumentin otsikko kantaan
    if($content =~ /<b>PTK $slashId vp - (\w.*)/) {
      my $title = $1;

      # saavat riittää toistaiseksi
      $title =~ s/&auml;/ä/g;
      $title =~ s/&ouml;/ö/g;

      my $cnt = $Conn->do("UPDATE document SET title=? WHERE id=?", undef, $title, $id);
      if($cnt == 1) {
        print "PÄIVITETTIIN DOKUMENTIN OTSIKKO: id=$id, otsikko='$title'\n";
        # jos nolla, dokumenttia ei tuotu, koska siinä ei ollut yhtään puheenvuoroa
        $did_something = 1;
      }
    }
  }

}

if($did_something) {
  print "SANOITIN, SUMMAIMET\n";

  mysystem("perl sanoitin.pl");
  mysystem("perl dokumenttisummain.pl");
  mysystem("perl puhujasummain.pl");

}
