use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";

use SPVM 'FizzBuzz';

# Call method with packed data
my $nums_packed = pack('l*', 1..100);
my $sv_nums = SPVM::new_int_array_from_bin($nums_packed);
SPVM::FizzBuzz->get_fizz_buzz($sv_nums);

