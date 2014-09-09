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

use Test::Requires {'Test::EOL' => 1.5};

all_perl_files_ok({trailing_whitespace => 1});

## done_testing();

__END__

