use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

use Test::More;
use Test::Requires { 'Test::CPAN::Changes::ReallyStrict' => 0.001005 };

changes_ok(
	{   delete_empty_groups => 0,
		keep_comparing      => 0,
		next_style          => 'dzil'
	}
);

done_testing();

__END__

