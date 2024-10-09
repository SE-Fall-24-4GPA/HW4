#!/bin/bash

echo "------------------Task a-------------------------------"
grep -r -l 'sample' ./dataset1/ | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); if [ "$count" -ge 3 ]; then echo "{}"; fi'

echo "------------------Task b-------------------------------"
grep -r -l '' ./dataset1/ | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); echo "{}:$count"' | gawk -F: '$2 >= 0 {print $1"," "count="$2}' | sort -k2,5nr

echo "------------------Task c-------------------------------"
grep -r -l '' ./dataset1/ |  sed 's/file_/filtered_/' 
 