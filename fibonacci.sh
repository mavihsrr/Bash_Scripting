#!/bin/bash

#Function to calculate the Fibonacci sequence
fibonacci() {
  n=$1
  a=0
  b=1

  for ((i = 0; i < n; i++)); do
    echo -n "$a "
    temp=$((a + b))
    a=$b
    b=$temp
  done
}

read -p "Enter the number of Fibonacci terms to generate: " num_terms

if [[ $num_terms =~ ^[0-9]+$ && $num_terms -gt 0 ]]; then
  fibonacci $num_terms
  echo
else
  echo "Please enter a positive integer."
fi
