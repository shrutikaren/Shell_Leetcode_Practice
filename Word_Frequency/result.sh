#!/bin/bash
IFS=$'\n' read -d "" -r -a wordsarray < <(cat words.txt | tr -s ' ' '\n')

declare -A resultsarray # Changing it to an associative array
for word in "${wordsarray[@]}"; do
	((resultsarray["$word"]++))
done

for word in "${!resultsarray[@]}"; do
	echo "$word ${resultsarray["$word"]}"
done | sort -r
