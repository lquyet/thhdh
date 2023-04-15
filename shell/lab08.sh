#!/bin/bash

echo "Enter coefficient a:"
read a

echo "Enter coefficient b:"
read b

echo "Enter coefficient c:"
read c

# Compute the discriminant
D=$((b*b - 4*a*c))

if [ $D -lt 0 ]; then
  echo "The equation has no real roots."
elif [ $D -eq 0 ]; then
  # Compute the single real root
  x=$(( -b / (2*a) ))
  echo "The equation has a single real root: x = $x"
else
  # Compute the two real roots
  x1=$(( (-b + sqrt(D)) / (2*a) ))
  x2=$(( (-b - sqrt(D)) / (2*a) ))
  echo "The equation has two real roots: x1 = $x1 and x2 = $x2"
fi
