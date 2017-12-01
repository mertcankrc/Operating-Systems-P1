#!/bin/bash
length="${#1}" #assigned length of input into a variable
input="$1"	#assigned input into a variable
index=$(($length -1)) #assigned index into a mathematical expression
total=0 #defined variable
for (( i = 0; i < length; ++i )); do 
	#the reason why i used this for loop is when you swap two numbers, you use 1st element only one time and it becomes 2nd digit so that multiplies with 1.
	#the last digit is also only used one time but that becomes first digit of a two-digit integer so it multiplies with 10.
	#the between ones are used as 1 time first digit and 1 time last digit so they multiply with 10.
	if [ $i -eq 0 ] #first digit
	 then
	let total=" total + ${input:0:1} "
      	elif [ $i -eq $index ] #last digit
	then
	let total="total + ${input:$index:1} * 10 "
      else #middle ones.
	let total="total+ ${input:$i:1} * 11 "
      fi
	
done
echo "$total"

