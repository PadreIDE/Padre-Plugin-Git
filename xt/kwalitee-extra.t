use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

use Test::More;
plan( skip_all => 'Author tests not required for installation' ) unless $ENV{RELEASE_TESTING};

my $mod_ver = 0.001003;
eval "require Test::Kwalitee::Extra";
plan skip_all => "Test::Kwalitee::Extra $mod_ver not installed; skipping" if $EVAL_ERROR;

# Test::Kwalitee::Extra->import( qw(!:optional) );
# Test::Kwalitee::Extra->import( qw( :core ) );

Test::Kwalitee::Extra->import( qw( :core :optional :experimental ) );

done_testing;

