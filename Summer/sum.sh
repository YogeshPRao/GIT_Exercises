#!/bin/bash

#Script to accept any number of numbers and print their sum. 

SUM=0
EXPRESSION='^[+-]?[0-9]+([.][0-9]+)?$'
for input in $*
do
	if ! [[  $input =~ $EXPRESSION ]]
	then
		echo "$input is not a number, skipping $input .."
		continue
	fi
	SUM=$(echo $SUM + $input | bc)
done
echo "The Sum is : $SUM"
