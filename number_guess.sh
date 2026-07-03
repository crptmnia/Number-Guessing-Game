#!/bin/bash

# The Number Guessing Game Script
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Reset users table for testing
# $PSQL "TRUNCATE TABLE users RESTART IDENTITY CASCADE"

# Request for user input
echo "Enter your username:"
read USERNAME

# Check for existing username
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
if [[ -z $USER_ID ]]
then # Add to database if new user
  USER_ID=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME') RETURNING user_id")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else # Display extra info if existing user
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(attempts) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate random number between 1 and 1000
TARGET=$(( RANDOM % 1000 + 1 ))

# Track number of attemots, guesses
ATTEMPTS=0
GUESS=0

# Guessing function
echo "Guess the secret number between 1 and 1000:"

# Guessing loop
while [[ $GUESS -ne $TARGET ]]
do
  read GUESS
  ATTEMPTS=$(($ATTEMPTS+1))

  # Validate integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  # Compare with target
  if [[ $GUESS -lt $TARGET ]]
  then
    echo "It's higher than that, guess again:"
  elif [[ $GUESS -gt $TARGET ]]
  then
    echo "It's lower than that, guess again:"
  fi
done

echo "You guessed it in $ATTEMPTS tries. The secret number was $TARGET. Nice job!"