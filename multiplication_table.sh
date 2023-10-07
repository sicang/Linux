#!/bin/bash

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: $0 <number of rows> <number of columns>"
    exit 1
fi

# Check if the arguments are positive integers
if ! [[ $1 =~ ^[1-9][0-9]*$ ]] || ! [[ $2 =~ ^[1-9][0-9]*$ ]]; then
    echo "Number of rows and columns must be positive integers"
    exit 1
fi

# Get the number of rows and columns
rows=$1
cols=$2

# Print the multiplication table
for ((i = 1; i <= rows; i++)); do
    for ((j = 1; j <= cols; j++)); do
        product=$((i * j))
        printf "%4d " $product
    done
    echo
done

