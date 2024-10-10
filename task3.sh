#!/bin/bash

echo "------------------Task 3-------------------------------"
gawk -F, '$3 == 2 {print $4 "," $5 "," $6, "," $7}' titanic.csv | sed 's/\<male\>/m/; s/\<female\>/f/' | gawk -F, ' {sum += $4; count++} END {if (count > 0) print "Average age:"sum / count}'