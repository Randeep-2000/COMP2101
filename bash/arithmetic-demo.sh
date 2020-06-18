#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#Task 1
# removed assignments of number by commentng
#firstnum=5
#secondnum=2
#read commands to rea 3 numbers
read -p "number 1 = " firstnum
read -p "number 2 = " secondnum
read -p "number 3 = " thirdnum
# sum of thee numbers
sum=$((firstnum + secondnum + thirdnum))
# product of three numbers
product=$(( firstnum*secondnum*thirdnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

# Task2 : changed the output to only show sum and product
cat <<EOF
SUM ( $firstnum, $secondnum, $thirdnum ) = $sum
Product ( $firstnum, $secondnum, $thirdnum ) = $product
EOF
