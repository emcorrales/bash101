#!/bin/bash

# Exercise 2
#
# Write a shell script that asks the user for the number of lines they would
# like to display from the /etc/passwd file and display those lines.

read -p "How many lines of /etc/passwd would you like to see? " NUM

while read LINE && [ $NUM -gt 0 ]; do
  echo $LINE
  ((NUM--))
done < /etc/passwd
