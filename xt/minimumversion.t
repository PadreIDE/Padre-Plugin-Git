use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

use Test::More;
use Test::Requires {
	'Perl::MinimumVersion' => 1.32,
	'Test::MinimumVersion' => 0.10108,
};

# all_minimum_version_from_metayml_ok();
#
# all_minimum_version_ok($version, \%arg);

my $version = 5.010001;
my %arg;

# all_minimum_version_ok($version, \%arg);
all_minimum_version_ok($version);
# all_minimum_version_ok();

done_testing();

__END__

