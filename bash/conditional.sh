#! /bin/bash

# Logical comparisons go inside double-brackets [[ ]]
# What's inside is treated as a conditional expression
# rather than a command to execute


if [[ $# > 0 ]]; then
  echo "I got these args:" $@;
else
  echo "I got no args.";
fi
