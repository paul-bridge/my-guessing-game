#!/bin/bash
# guessinggame.sh

# function to count files in current directory
function fcount {
  cfiles=($(ls))
  echo ${#cfiles[*]}
}

message="Let's play a guessing game"
numfiles=$(fcount)

while [[ true ]]
do
  echo $message
  echo -n "How many files are in the current directory? : "
  read guess
  # Validate input
  if [[ ! $guess =~ ^-?[0-9]+$ ]]; then
    message="Please enter an integer"
    continue
  fi
  if [[ $guess -ne $numfiles ]]; then
    if [[ $guess -lt $numfiles ]]; then
       message="Sorry, your guess is too low, please guess again"
    else
       message="Sorry, your guess is too high, please guess again"
    fi
    continue
  else
    echo "Congratulations, you have guessed correctly. Thank you for playing. Goodbye"
    exit
  fi
done

