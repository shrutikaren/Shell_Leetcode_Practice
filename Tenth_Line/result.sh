#!/bin/bash 

# Take all of the lines into a bash array 
IFS=$'\n' read -d '' -r -a arraylines < file.txt
echo "${arraylines[@]}"

# Iterate through the array to obtain the 10th line

# Produce the 10th line if it's available 

# If not, produce nothing 

