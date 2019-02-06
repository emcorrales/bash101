#!/bin/bash

# Exercise 1:
#
# Write a shell script that renames all files in the current directory that end in
# ".jpg" to begin with today's date in the following format: YYYY­MM­DD. For
# example, if a picture of my cat was in the current directory and today was
# October 31, 2016 it would change name from "mycat.jpg" to "20161031­mycat.jpg".
#
# Hint: Look at the format options to the date command.
#
# For "extra credit" make sure to gracefully handle instances where there are no
# ".jpg" files in the current directory. (Hint: Man bash and read the section on
# the nullglob option.)

shopt -s nullglob
for file in *.jpg; do
  mv $file $(date +"%Y%m%d")-$file
done
