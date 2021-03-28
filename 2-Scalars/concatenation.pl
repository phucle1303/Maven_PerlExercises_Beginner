use strict;
use warnings;

#concatenate 2 strings

print "Input string 1 ";
my $str1 = <STDIN>;
chomp $str1;

print "Input string 2 ";
my $str2 = <STDIN>;
chomp $str2;

print "Result: ", $str1.$str2, "\n";