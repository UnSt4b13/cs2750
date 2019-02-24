#!/bin/bash

numberOfArguments=$#
declare -a scores
commandLineArray=( "$@" )

if [[ -z $1 || -z $2 || -z $3 ]];then
	echo
	echo "Usage: <first name> <last name> <test score> ..."
	exit
else 
	fname=$1
	lname=$2
	scores[0]=$3
	
	for (( i = 3; i <= $numberOfArguments; i++ ))
	do 
		scores[$i-2]=${commandLineArray[$i]}  
	done
fi

numberOfScores=${numberOfArguments-2}
sum=0

for (( i = 0; i < $numberOfScores; i++ ))
do
	((sum=$sum+${scores[$i]}))
done

average=$sum/$numberOfScores

echo $average

echo ${scores[1]}
echo ${commandLineArray[5]}


