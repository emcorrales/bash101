#!/bin/bash

# Exercise 2:
#
# Modify the previous script so that it uses a logging function. Additionally
# tag each syslog message with "randomly" and include the process ID. Generate 3
# random numbers.

logger -s -i -t randomly -p user.info $RANDOM
logger -s -i -t randomly -p user.info $RANDOM
logger -s -i -t randomly -p user.info $RANDOM
