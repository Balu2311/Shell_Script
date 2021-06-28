#!/bin/bash -x
Length=60
Width=40
area=$(( $Length * $Width ))
echo $area
meters=$(echo $area  0.3048 | awk '{ printf "%f", $1 * $2 }' )
echo $meters "meters"
