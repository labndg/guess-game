#!/usr/bin/env bash
## guessinggame

function askUser {
	echo "Please guess how many files are in your current directory and then press Enter"
	read response
	let dif=$response-$(ls | wc -l)
}

dif=1

while [[ $dif -ne 0 ]]
do
	askUser 
	if [[ $dif -eq 0 ]]
	then
		echo "Congratulations, you nailed it"
	elif [[ $dif -lt 0 ]]
	then
		echo "Below... Try again."
	else
		echo "Above... Try again."
	fi
done
