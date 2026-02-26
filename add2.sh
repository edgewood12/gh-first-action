#!/bin/bash

# Check if exactly 2 arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi

# Assign arguments to variables
num1=$1
num2=$2

# Perform the addition using Arithmetic Expansion
sum=$((num1 + num2))

# Output the result
echo "The sum of $num1 and $num2 is: $sum"
