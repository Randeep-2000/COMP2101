#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

#flag to check if user has guessed password
flag=0
# assign the password
referenceString="password"
# asking user
echo "Five tries to guess password "
echo "First Try:"
echo "Guess"
# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
read myString
# if password matches user string
# TASK 2: Improve it by rewriting it to use the if command
if [ $myString = $referenceString ];
then
# update flag to 1 to stop othe if conitions
flag=1
echo "Your guess is Correct!"
else
echo "You guess is Incorrect."
fi

#TASK 3: Improve it by giving them 5 tries to get it right before failing
# check for flag if password is guessed in previous try
if [ $flag -eq 0 ];
then

echo "Second Try:"
echo "Guess"
#rewriting myString variable
read myString

if [ $myString = $referenceString ];
then
flag=1
echo "Your guess is Correct!"
else
echo "You guess is Incorrect."
fi
fi

# check for flag if password is guessed in previous try
if [ $flag -eq 0 ];
then

echo "Third Try:"
echo "Guess"
read myString

if [ $myString = $referenceString ];
then
flag=1
echo "Your guess is Correct!"
else
echo "You guess is Incorrect."
fi
fi

# check for flag if password is guessed in previous try
if [ $flag -eq 0 ];
then

echo "Fourth Try:"
echo "Guess"
read myString

if [ $myString = $referenceString ];
then
flag=1
echo "Your guess is Correct!"
else
echo "You guess is Incorrect."
fi
fi

# check for flag if password is guessed in previous try
if [ $flag -eq 0 ];
then

echo "Last Try:"
echo "Guess"
read myString

if [ $myString = $referenceString ];
then
flag=1
echo "Your guess is Correct!"
else
echo "You guess is Incorrect."
fi
fi
