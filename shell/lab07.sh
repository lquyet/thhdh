#!/bin/bash

# Check if the user provided a directory argument
if [ $# -eq 0 ]
then
  echo "Please provide a directory path as an argument"
  exit 1
fi

# Check if the directory exists
if [ ! -d "$1" ]
then
  echo "Directory not found"
  exit 1
fi

# Count the number of subdirectories (recursively)
num_subdirs=$(($(find "$1" -type d | wc -l) - 1))

# Print the result
echo "The number of subdirectories in the directory $1 is: $num_subdirs"
