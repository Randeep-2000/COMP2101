#!/bin/bash
# My third script - helloworldugly.sh
# This script displays the string “Hello World!”

# This is a silly way of creating the output text by starting with something else and stream editing it in a pipeline
echo -n "helb wold" |
#strem editor
  sed -e "s/b/o/g" -e "s/l/ll/" -e "s/ol/orl/" |
 # for the translate
  tr "h" "H"|
  #for the tranlate
  tr "w" "W"|
  # deffin the txt pattren
  awk '{print $1 "\x20" $2 "\41"}'
 #basic calculator
bc <<< "(($$ * 4 - 24)/2 + 12)/2" |
# strem editor
  sed 's/^/I am process # /'
