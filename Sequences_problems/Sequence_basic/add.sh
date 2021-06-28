#!/bin/bash -x
read -p "Enter a value for x: " x
# read -p "Enter a value for y: " y
echo "Enter a value for y"
read y
z=$(($x+$y))
echo $z
