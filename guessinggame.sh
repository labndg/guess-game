#!/usr/bin/env bash
##guessinggame

function askUser {

	echo "Please guess the number of files in your current directory en press Enter"
	read response
#	echo "Your guess is $response"
	let dif=$response-$(ls | wc -l)
	#echo $dif
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
