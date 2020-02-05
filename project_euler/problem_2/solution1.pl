#!/usr/bin/env perl

# https://projecteuler.net/problem=2
# Problem Statement:
#  Each new term in the Fibonacci sequence is generated by adding the previous two terms.
#  By starting with 1 and 2, the first 10 terms will be:
#      1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#  By considering the terms in the Fibonacci sequence whose values do not exceed four million,
#  find the sum of the even-valued terms.

use strict;
use warnings;
use Readonly;
Readonly my $MAX_NUM => 4_000_000;    # Can also be written as 4000000

sub main {

    # Fibonacci number using iterative approch
    my $previous = 1;
    my $current  = 2;
    my $sum      = 0;
    while ($current <= $MAX_NUM) {
        if ($current % 2 == 0) {
            print $current . " ";
            $sum = $sum + $current;
        }
        ($previous, $current) = ($current, $previous + $current);
    }
    print "\nSum: " . $sum;
    return $sum;
}

main;