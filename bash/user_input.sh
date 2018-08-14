#!/bin/bash

# Get user input in string form

echo "Please type the word:"
read word
echo "The word you entered is: $word"
echo "Can you please enter two words? "
read word1 word2

echo "Here is your input: \"$word1\" \"$word2\""

echo "What do you think? "
read
# 'read' stores now in the default built-in variable $REPLY

echo -e "You said $REPLY \nDo you mean it? "
# -e means 'enable escape sequences'
echo "What are your favorite colors? "
read -a colors
# the '-a' arg tells 'read' to read into an array
# the response is space-separated
echo "Your favorite colors are ${colors[0]}, ${colors[1]}, and ${colors[2]}"
