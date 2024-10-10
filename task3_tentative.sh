#!/bin/bash

# Pipeline to process Titanic dataset
cat titanic.csv | 
gawk -F, '$3 == 2 && $NF == "S" {print}' | 
sed 's/,male,/,M,/; s/,female,/,F,/' | 
gawk -F, '{ sum += $6; count++ } 
END { if (count > 0) printf "Average age: %.2f\n", sum/count }'