#!/bin/bash

# Defining an array and accessing members
array=('My thing' 'Another thing' 'Yet another thing')

# we can use $# to get the number of elements (length)
length=${#array[@]}
echo $length

mything=${array[2]}
echo $mything

# Another type of for loop
for ((i=0; i<$length; i++)); do
	echo ${array[${i}]}
done
