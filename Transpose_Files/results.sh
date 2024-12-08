#!/bin/bash

IFS=$'\n' read -d '' -r -a information < <(cat file.txt | tr ' ' '\n')

COUNT=0
for firstcolumn in "${information[@]}"; do
	if (( COUNT % 2 == 0 )); then
		echo -n "$firstcolumn "
	fi
	COUNT=$((COUNT + 1))
done

echo # To print a new line 
 
COUNT=0
for secondcolumn in "${information[@]}"; do
	if (( COUNT % 2 != 0 )); then
		echo -n "$secondcolumn "

	fi
	COUNT=$((COUNT + 1))
done

echo	
