#!/bin/bash 

# Take all of the lines into a bash array 
IFS=$'\n' read -d '' -r -a arraylines < file.txt

TARGET=9
CURRENT_COUNT=0

# Iterate through the array to obtain the 10th line
for line in "${arraylines[@]}"; do
	# If we reached line number 10
	if [ "$CURRENT_COUNT" -eq "$TARGET" ]; then
		# If the line actually does exist 
		echo $line 
		
		# Once we have reached the tenth line, our goal is completed
		# So we are going to go ahead and exit out of our for-loop
		# basically
		exit 0
	fi
	CURRENT_COUNT=$((CURRENT_COUNT + 1))
done

# If nothing get's printed out, we print an empty line 
echo ""
