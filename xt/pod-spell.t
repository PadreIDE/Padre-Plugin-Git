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

use Test::Requires {'Test::Spelling' => 0.19};

add_stopwords(qw( CPAN STDIN STDOUT STDERR JSON MetaCPAN YAML mcpan midgen kevin dawson IDE cmd nopasting GitHub kaare cpan Dumont ENV etaish Alexandr Ciornii Niebur perlbotics ));
all_pod_files_spelling_ok();

# done_testing();

__END__

