use strict;
use warnings;
use v5.10;

warn "\nThis code is using knowledge which is not in this chapter.\n\n ";

#number guessing game
my $limit = 200;
my $result = int(rand($limit)) + 1;

say "Game started!";
my $guess;

do
{
    print "Please type your number you guess from 1 to 200 or type \'0\' to exit: ";
    $guess = <STDIN>;
    chomp $guess;

    if ($guess > 0 and $guess < 201)
    {
        if ($guess < $result)
        {
            say "Your guess is less than the result, please try again.";
        }
        elsif ($guess > $result)
        {
            say "Your guess is bigger than the result, please try again.";
        }
        else
        {
            say "Your guess is correct. Bravo!.\n";
            $guess = 0;
        }
    }
    
}while ($guess != 0);
