#!/bin/bash

# Exercise 1
#
# Write a shell script that loops through the /etc/passwd file one line at a
# time. Prepend each line with a line number followed by a colon and then a
# space.

NUM = 1

while read LINE; do
  echo $NUM: $LINE
  ((NUM++))
done < /etc/passwd
