#!/bin/bash

# Function to perform addition
add() {
  result=$(($1 + $2))
  echo "The result of $1 + $2 = $result"
}

# Function to perform subtraction
subtract() {
  result=$(($1 - $2))
  echo "The result of $1 - $2 = $result"
}

# Function to perform multiplication
multiply() {
  result=$(($1 * $2))
  echo "The result of $1 * $2 = $result"
}

# Function to perform division
divide() {
  result=$(($1 / $2))
  echo "The result of $1 / $2 = $result"
}

# User interface
echo "Simple Calculator"
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2
echo "Enter the operator (+, -, *, /): "
read operator

# Switch case to perform the calculation based on the operator
case $operator in
  "+") add $num1 $num2
    ;;
  "-") subtract $num1 $num2
    ;;
  "*") multiply $num1 $num2
    ;;
  "/") divide $num1 $num2
    ;;
  *) echo "Invalid operator"
    ;;
esac
