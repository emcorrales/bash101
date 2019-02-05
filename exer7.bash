#!/bin/bash

# Exercise 7:
#
# Modify the previous script so that it accepts the file or directory name as an
# argument instead of prompting the user to enter it.

FILE=$1

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

