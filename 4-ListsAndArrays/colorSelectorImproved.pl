use strict;
use warnings;

use Getopt::Long qw(GetOptions);

my $color;
my $force;
my $filename = 'colors.txt';
GetOptions(
    "color=s" => \$color,
    "filename=s" => \$filename,
    "force" => \$force,
    ) or die "Usage: $0 [--color COLOR]\n";

my @colors;# = ("Blue", "Yellow", "Brown", "White");

open(my $fh, "<", $filename) or die "Could not open '$filename'\n";
while (my $line = <$fh>)
{
    chomp $line;
    @colors = (@colors, $line);
}

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
elsif (not defined $force)
{ 
    my $countErr=0;
    foreach my $c (@colors)
    {
        if (lc $color ne lc $c) #lc will take lower case version of $color and $c to compare
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
