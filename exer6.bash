#!/bin/bash

# Exercise 6:
#
# Write a shell script that prompts the user for a name of a file or directory
# and reports if it is a regular file, a directory, or other type of file. Also
# perform an ls command against the file or directory with the long listing
# option.

read -p "Please enter the path of a file or directory: "  FILE

if [ ! -e $FILE ]; then
  echo "File $FILE does not exist!"
else
  if [ -f $FILE ]; then
    TYPE="regular"
  elif [ -d $FILE ]; then
    TYPE="directory"
  fi

  echo "$FILE is a $TYPE file."
  ls -l $FILE
fi

