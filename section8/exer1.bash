#!/bin/bash

# Exercise 1:
#
# Write a shell script that displays one random number to the screen and also
# generates a syslog message with that random number. Use the "user" facility
# and the "info" facility for your messages.
#
# Hint: Use $RANDOM
echo $RANDOM
logger -p user.info $RANDOM
