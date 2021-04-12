use strict;
use warnings;

use Getopt::Long qw(GetOptions);

my $color;
GetOptions("force=s" => \$color) or die "Usage: $0 [--force COLOR]\n";
my @colors = ("Blue", "Yellow", "Brown", "White");

if (not defined $color)
{  
    print "Please select a number: \n";
    foreach my $i (0..$#colors)
    {
        print $i+1, ") $colors[$i]\n";
    }
    my $num = <STDIN>;
    chomp($num);
    $num--;
    if (defined $colors[$num])
    {
        $color = $colors[$num];
    }
    else
    {
        print "Bad selection\n";
        exit;
    }
}
else8
{
    my $countErr=0;
    foreach my $i (0..$#colors)
    {
        if ($color ne $colors[$i])
        {
            $countErr++;
        }
    }
    if ($countErr == 4)
    {
        print "Bad selection\n";
        exit;
    }
}

print "The selected color is $color\n";
