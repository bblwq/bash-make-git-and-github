#!/usr/bin/env bash
# File: guessinggame.sh

function guessingFileCount() {
	filecount=$(ls | wc -l)

	echo "Guess how many files are there in the current directory?"
	
	read response

	while [[ $response -ne $filecount ]]
	do
		if [[ $response -gt $filecount ]]
		then
			echo "Your guess, $response, is too high. Please try again!"
		elif [[ $response -lt $filecount ]]
		then
			echo "Your guess, $response, is too low. Please try again!"
		fi
		read response
	done

	echo "Congrats, your guess is correct! There are $filecount files."
}

guessingFileCount
