use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

BEGIN {
	unless ($ENV{RELEASE_TESTING}) {
		use Test::More;
		Test::More::plan(skip_all => 'Release Candidate testing, not required for installation.');
	}
}

use Test::Requires { 'Test::DistManifest' => 1.012 };

manifest_ok('MANIFEST', 'MANIFEST.SKIP');

done_testing();

__END__

