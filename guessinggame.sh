#!/usr/bin/env bash
# The Unix Workbench | Week 4 | Project
# File: guessinggame.sh

# Main code (function)
function guessinggame {
	local flag=0
	local f=$(ls -1 | wc -l)
	
	while [[ $flag -eq 0 ]]
	do
		echo "Guess the number of files in this directory:"
		read g 
		if [[ $g -eq $f ]]
		then
			echo "Congratulations! This directory has $f files"
			let flag=1
		elif [[ $g -gt $f ]]
		then
			echo "No, this is too high, try again."
		else
			echo "No, this is too low, try again."
		fi
	done
}

# Run the function (an instance!)
guessinggame
