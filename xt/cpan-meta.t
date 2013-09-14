use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

use Test::More;
use Test::Requires { 'Test::CPAN::Meta' => '0.23' };

meta_yaml_ok();

done_testing();

__END__

