#!/bin/bash -x
read -p "Enter input valus: " d
# 1ft = 12 inches
feets=$(echo $d  12 | awk '{ printf "%.2f", $1 / $2 }' )
#echo $feets "ft"
