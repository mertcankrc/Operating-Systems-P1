#!/bin/bash
filename="$1" #created a variable and assigned it to our input file
while read -r line #while reading line by line
do
	counter="$line" #assigned the counter variable to the data in the current line
	for(( counter;  counter >1 ; counter--))  
	do
		echo -ne "*"
		#in a for loop, we write asterisk symbols as much as our counter on a single line
		# with the help of -ne .
	done
	echo "*" #to continue with the next line, we only used echo because it automatically 
		#continues from next line.
done < "$filename"
