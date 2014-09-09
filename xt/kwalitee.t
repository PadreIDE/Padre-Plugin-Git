use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

use Test::More;

plan( skip_all => 'Author tests not required for installation' ) unless $ENV{RELEASE_TESTING};

my $mod_ver = 1.14;
eval "require Test::Kwalitee";
plan skip_all => "Test::Kwalitee $mod_ver required for testing" if $EVAL_ERROR;

Test::Kwalitee->import();

# done_testing();

__END__

