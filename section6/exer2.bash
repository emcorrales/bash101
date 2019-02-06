#!/bin/bash

# Exercise 2:
#
# Write a script that renames files based on the file extension. The script
# should prompt the user for a file extension. Next, it should ask the user what
# prefix to prepend to the file name(s). By default the prefix should be the
# current date in YYYY­MM­DD format. So, if the user simply presses enter the
# date will be used. Otherwise, whatever the user entered will be used as the
# prefix. Next, it should display the original file name and the new name of the
# file. Finally, it should rename the file.
#
# Example output 1:
#
# Please enter a file extension: jpg
# Please enter a file prefix: (Press ENTER for 2015­08­10). vacation
# Renaming mycat.jpg to vacation­mycat.jpg.
#
# Example output 2:
#
# Please enter a file extension: jpg
# Please enter a file prefix: (Press ENTER for 2015­08­10).
# Renaming mycat.jpg to 2015­08­10­mycat.jpg.

DEFAULT_PREFIX=$(date +"%Y %m %d")

shopt -s nullglob
read -p "Please enter a file extension: " ext
[ -z $ext ] && echo "Please enter an extension." && exit 1

read -p "Please enter a file prefix: (Press enter for $DEFAULT_PREFIX). " prefix
[ -z $prefix ] && prefix=$DEFAULT_PREFIX

for file in *.$ext; do
  echo "Renaming $file to $prefix $file."
  mv "$file" "$prefix $file"
done
