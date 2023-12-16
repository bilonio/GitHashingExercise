#! /bin/bash
read -p "Enter a 4-digit integer: " input

# Check if the input is a 4-digit integer
if [[ $input =~ ^[0-9]{4}$ ]]; then
    hashed_value=$(echo -n "$input" | sha256sum | awk '{print $1}')
    echo "Hashed value: $hashed_value"
    echo "$hashed_value" > ./hash_output.txt 
else
    echo "Invalid input. Please enter a 4-digit integer."
fi
