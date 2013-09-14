use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

BEGIN {
	unless ($ENV{RELEASE_TESTING}) {
		require Test::More;
		Test::More::plan(
			skip_all => 'these tests are for release candidate testing');
	}
}

use Test::Requires {'Test::Tabs' => 0.003};

all_perl_files_ok();

#done_testing();

__END__

