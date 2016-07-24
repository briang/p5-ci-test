#!perl -T
use 5.006;
use strict;
use warnings;
use Test::Most;

BEGIN {
    use_ok( 'CI::Test' ) || print "Bail out!\n";
}

diag( "Testing CI::Test $CI::Test::VERSION, Perl $], $^X" );

done_testing;
