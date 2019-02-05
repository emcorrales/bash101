#!/bin/bash

# Exercise 8:
#
# Modify the previous script to accept an unlimited number of files and
# directories as arguments. Hint: You'll want to use a special variable.

for FILE in $@; do
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
done

