#!/bin/bash
addition() {
  result=$(( $1 + $2 ))
  echo "Addition: $1 + $2 = $result"
}
subtraction() {
  result=$(( $1 - $2 ))
  echo "Subtraction: $1 - $2 = $result"
}
multiplication() {
  result=$(( $1 * $2 ))
  echo "Multiplication: $1 * $2 = $result"
}

# Function to perform division
division() {
  if [ $2 -eq 0 ]; then
    echo "Division by zero is not allowed."
  else
    result=$(awk "BEGIN {printf \"%.2f\", $1 / $2}")
    echo "Division: $1 / $2 = $result"
  fi
}
echo "Enter two numbers:"
read num1
read num2

addition $num1 $num2
subtraction $num1 $num2
multiplication $num1 $num2
division $num1 $num2
