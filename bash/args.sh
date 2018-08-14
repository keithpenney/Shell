#!/bin/bash

# Use predefined variables to access arguments passed to the script
# for now, just echo args to the shell
echo $1 $2 $3 ' -> echo $1 $2 $3'

# We can also store args from bash in a special array
args=("$@") # wtf is this?
#echo args to the shell
echo ${args[0]} ${args[1]} ${args[2]} '-> args=("$@");echo ${args[0]} ${args[1]} ${args[2]}'

# Use $@ to print out all args
echo $@ ' -> echo $@'

# use $# variable to print out number of args passed to bash
echo Number of arguments passed: $# ' -> echo Number of arguments passed: $#'
