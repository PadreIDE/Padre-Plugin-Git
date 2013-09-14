use strict;
use warnings FATAL => 'all';

BEGIN {
	unless ($ENV{RELEASE_TESTING}) {
		require Test::More;
		Test::More::plan(skip_all => 'Release Candidate testing, not required for installation.');
	}
}

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

use Test::More;
use Test::Requires {'Test::Portability::Files' => 0.06};

#options(test_one_dot => 0);
options(all_tests => 1);    # to be hyper-strict
run_tests();

done_testing();

__END__

