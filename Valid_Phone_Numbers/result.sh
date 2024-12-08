#!/bin/bash

# Storing the lines inside a bash array called "phonenumbers"
IFS=$'\n' read -d '' -r -a phonenumbers < file.txt

for lines in "${phonenumbers[@]}"; do
   if [[ "$lines" =~ ^\([0-9]{3}\)\ [0-9]{3}-[0-9]{4}$ ]]; then
	echo "$lines"
   elif [[ "$lines" =~ ^[0-9]{3}-[0-9]{3}-[0-9]{4}$ ]]; then
	echo "$lines"
   fi
done



