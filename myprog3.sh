#!/bin/bash 

echo

if [ -f $1 ] # check file exist or not
then

	cat $1 #print file content
	echo
	read -p "Please enter the word which you want to change: " answer </dev/tty #get word which want to be changed

	read -p "Please enter the word which you want to change with: " change </dev/tty
	# get new word instead of old word 

	    for file in **; do #search in file
		if [[ -f $file ]] && [[ -w $file ]]; then #if find the word
		    sed -i -- 's/'$answer'/'$change'/g' $1 #change words
		fi
	    done < $1

	echo
	cat $1 # print file content
		
else
	echo "File is null" # if file does not exist give message to user
fi



