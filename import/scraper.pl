#!/usr/bin/perl -w

use strict;

use LWP;

sub pageUrl {
    my ($page) = @_;

    my $n = ($page-1) * 50;

    return 'http://www.eduskunta.fi/triphome/bin/thw.cgi/trip?${MAXPAGE}=51&${APPL}=utaptk&${BASE}=utaptk&${HTML}=akxptk4000&${THWIDS}='
        . $n
        . '.27/1316895687_4199&${HILITE}=0&${SAVEHTML}=/triphome/bin/akxhaku.sh?lyh=PTKSUP?lomake=akirjat/akx3100';
}

my $Ua = LWP::UserAgent->new;

sub get {
    my ($url) = @_;
    
    print STDERR "GET $url...\n";

    my $resp;
    for my $try (1..3) {
        $resp = $Ua->get($url);
        if($resp->is_success) {
            return $resp->content;
        }
        my $status = $resp->code;
        print STDERR "[$status] retrying: $url\n";
        sleep 3;
    }    
    print STDERR "ERROR: '$url' - " . $resp->as_string;
}

# 50 uusinta
getDocs(get('http://www.eduskunta.fi/triphome/bin/akx3000.sh?kanta=utaptk&LYH=LYH-PTK&haku=PTKSUP&kieli=su&VPVUOSI'));

#for my $page (1..100) {
#    my $found = getDocs(get(pageUrl($page)));
#    if($found) {
#   next;
#    } else {
#   last;
#    }
#
#}

sub getDocs {
    my ($searchResultsHtml) = @_;

    # 41.&nbsp;&nbsp;<b>PTK 1b/2011 vp - Valtiop&auml;ivien avajaiset
    # 48.&nbsp;&nbsp;<b>PTK 169/2010 vp - T&auml;ysistunto ja suullinen kyselytunti

    my $n = 0;
    my @items = split /<div class="list-items">/, $searchResultsHtml;
    shift @items;

    for my $item (@items) {
#   if($item =~ /^\s*(\d+)\.&nbsp;&nbsp;<b>PTK (\w+)\/(\d+) vp - /gm) {
#       my $filename = "ptk_$2_$3.sgm";
#       my $sgmlUrl = "http://www.eduskunta.fi/faktatmp/utatmp/akxtmp/$filename";
#   }

    # <a href="/triphome/bin/akxptk.sh?{KEY}=PTK+38/2011+vp"> HTML </a>
    if($item =~ m!^\s+<a href="(/triphome/.*)"> HTML </a>!m) {
        my $htmlVersion = get("http://www.eduskunta.fi$1");
        # <a href="/faktatmp/utatmp/akxtmp/ptk_40_2011.sgm"> &raquo;Rakenteinen asiakirja</a>
        if($htmlVersion =~ /<a href="(.*?(\w+\.sgm))">/) {
        my $path = $1;
        my $filename = $2;
        my $sgmlUrl = "http://www.eduskunta.fi$path";
        my $data = get($sgmlUrl);
        open H, ">ptk-queue/$filename" or die $!;
        print H $data;
        close H;
        
        $n++;
        
        } else {
        print STDERR "VIRHE: Ei löytynyt sgml-linkkiä:\n\n$htmlVersion\n\n";
        }
    } else {
        print STDERR "VIRHE: Ei löytynyt html-linkkiä:\n\n$item\n\n";
    }

    }
    return $n;
}    
