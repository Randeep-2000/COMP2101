#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
# Task 1: Use the variable $USER instead of the myname variable to get your name
title="Overlord"
#assign user to myname
myname=$USER
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
hostname=$(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
date="It is $(date +%A) at $(date +%I:%M) $(date +%p)"
# Task 4: Set the title using the day of the week
dayOfWeek=$(date +%w)

# setting title from day 1 to day 6 and day 0 is using as default
if [ $dayOfWeek -eq 1 ];
then
  # now tititle is mighty
title="Mighty"
else
if [ $dayOfWeek -eq 2 ];
then
  # title assign Realist
title="Realist"
else
if [ $dayOfWeek -eq 3 ];
then
#title assign Pessimist
title="Pessimist"
else
if [ $dayOfWeek -eq 4 ];
then
  #title assign Optimist
title="Optimist"
else
if [ $dayOfWeek -eq 5 ];
then
  # title assign super
title="Super"
else
if [ $dayOfWeek -eq 6 ];
then
  #here title assign jr
title="Jr."
fi
fi
fi
fi
fi
fi
###############
# Main        #
###############
WelcomeMessage="Welcome to planet $hostname, $title $myname! $date"
# Cowsay command to print data
cowsay $WelcomeMessage
