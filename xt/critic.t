use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

BEGIN {
	unless ($ENV{RELEASE_TESTING}) {
		require Test::More;
		Test::More::plan(
			skip_all => 'Author tests, not required for installation.');
	}
}

use Test::Requires {'Perl::Critic' => 1.118, 'Test::Perl::Critic' => 1.02,};

Test::Perl::Critic->import(
	-severity => 4,
	-verbose  => 4,
	-exclude  => ['RequireRcsKeywords', 'constant'],
);

all_critic_ok();

done_testing();

__END__

