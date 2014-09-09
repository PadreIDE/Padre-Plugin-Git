<<<<<<< HEAD
#!/usr/bin/env perl

# Test that the syntax of our POD documentation is valid
use strict;
use warnings;
$| = 1;

use Test::More;
eval "use Test::Pod 1.45";
plan skip_all => "Test::Pod 1.45 required for testing POD" if $@;
=======
use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

BEGIN {
	unless ($ENV{RELEASE_TESTING}) {
		use Test::More;
		Test::More::plan(
			skip_all => 'Author tests, not required for installation.');
	}
}

use Test::Requires { 'Test::Pod' => 1.48 };

>>>>>>> 42555c5dc8988df26a4cb95b9f17d8a516a03bff
all_pod_files_ok();

done_testing();

<<<<<<< HEAD
1;

__END__

=======
__END__
>>>>>>> 42555c5dc8988df26a4cb95b9f17d8a516a03bff
