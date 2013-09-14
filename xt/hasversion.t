use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

use Test::More;
use Test::Requires { 'Test::HasVersion' => 0.012 };

all_pm_version_ok();

done_testing();

__END__

