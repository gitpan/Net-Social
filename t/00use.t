#!perl -w

use strict;
use Test::More tests => 7;

use_ok("Net::Social");

foreach my $site (qw(LiveJournal Vox Flickr)) {
    use_ok("Net::Social::Site::${site}");
    ok("Net::Social::Site::${site}"->can('new'), "$site plugin has a new() method");
}
