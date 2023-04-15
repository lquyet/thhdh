#!/bin/bash

# Ask the user to input a string
echo "Please enter a string: "
read string

# Count the number of uppercase letters
num_uppercase=$(echo $string | grep -o -E '[A-Z]' | wc -l)

# Count the number of lowercase letters
num_lowercase=$(echo $string | grep -o -E '[a-z]' | wc -l)

# Print the results
echo "The number of uppercase letters in the string is: $num_uppercase"
echo "The number of lowercase letters in the string is: $num_lowercase"
