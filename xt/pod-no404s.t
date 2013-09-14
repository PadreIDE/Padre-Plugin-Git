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

use Test::Requires {'Test::Pod::No404s' => 0.01};

all_pod_files_ok();

done_testing();

__END__


