#!/usr/bin/env bash
# File: guessinggame.sh

# Function implements the "guessinggame" logic.
function guessinggame {
    local items_total=$(ls | wc -l)
    echo "Try to guess the correct number of files in this directory: "
    read input
    while [[ ! $input -eq $items_total ]]; do
	if [[ $input -lt $items_total ]]; then
	    echo "Your guess is LESS then the right one. Try again: "
	    read input
	else
	    echo "Your guess is GREATER then the right one. Try again: "
	    read input
	fi
    done
    echo "Well done! $input is the right answer! =)"
}

# Let's call the functin and start the game!
guessinggame


