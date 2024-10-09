#!/bin/bash

echo "------------------Task 2-------------------------------"
grep -r -l 'sample' ./dataset1/ | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); if [ "$count" -ge 3 ]; then echo "{}"; fi' | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); echo "{}=$count"' | gawk -F= '$2 >= 0 {print $1"," "count="$2}' | sort -t'=' -k2 -nr  |  sed 's/file_/filtered_/' 
