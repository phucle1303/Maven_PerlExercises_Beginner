use strict;
use warnings;

print "Calculate area of rectangular\n";
print "Enter length: ";
my $length = <STDIN>;
chomp $length; #remove the newline in the input

print "Enter width: ";
my $width = <STDIN>;
chomp $width; #remove the newline in the input

if ($length < 0 or $width < 0)
{
    print "ERROR: Length or width must be greater than 0, terminate the program\n";
    print "Area of your rectangular is 0\n"; 
}
else
{
    print "Area of your rectangular is ", $length * $width,"\n"; 
}