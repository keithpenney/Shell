#!/bin/bash
# It's a trap!

trap bashtrap 2
# maybe that declares that 'bashtrap' is a trap?
# the number at the end is the SIGNAL value to respond to. '2' is keyboard interrupt
# see 'man 7 signal' for a complete list of values
# Originally it was:
#trap bashtrap INT
# make it respond to ALL integer values of SIGNAL?

clear;
# why the semicolon?

# bash trap function is executed when CTRL+C is pressed
bashtrap()
{
	echo "I guess I reckon that was a CTRL+C that just happened."
}

# now let's make a for-loop to give us something to interrupt
for a in `seq 1 10`; do
	echo "$a/10 to Exit."
	sleep 1;
done
echo "Exiting Bash trap example."


