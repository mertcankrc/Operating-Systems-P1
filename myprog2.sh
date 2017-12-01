#!/bin/bash

# give a path and write file names (except directories) to file.txt file
ls -p "$1" | grep -v /  > file.txt

# print file.txt to screen
echo $(<file.txt)

while IFS=''  read -r line || [[ -n "$line" ]]; do 
#while loop in file.txt
	    	


		read -p "Do you want to remove this file $line? [y/n]" answer </dev/tty		#get input from user (y/n)
		case $answer in
			[Yy]* ) cd "$1" #go path
				rm $line # and delete file
				echo "File deleted";; 
			[Nn]* )  echo "Not deleting files";;
			* ) echo "Enter a valid response y or n";;
		    esac
done < file.txt

ls -p "$1" | grep -v / # and list the items which left
