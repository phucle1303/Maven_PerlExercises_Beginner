use strict;
use warnings;

# given a file with a number on each row, print the sum, min, max and average of the numbers

my $sum = 0;
my $averageCounter = 0;
my $average;
my $min;
my $max;
my $filename = "numbers.txt";
open(my $fh, "<", $filename) or die "Could not open '$filename'\n";
while (my $line = <$fh>)
{
    chomp $line;
    $sum += $line;
    $averageCounter++; #count number of digits from filename
    if ($averageCounter == 1)
    {
        $min = $line;
        $max = $line;
    }
    else
    {
        if ($min > $line)
        {
            $min = $line;
        }
        if ($max < $line)
        {
            $max = $line;
        }
    }
}

$average = $sum/$averageCounter;
# close($fh);
print "The total value is $sum\n";
print "The minimum value is $min\n";
print "The maximum value is $max\n";
print "The average value is $average\n";