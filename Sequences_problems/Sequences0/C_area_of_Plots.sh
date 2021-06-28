#!/bin/bash -x
l=60
w=40
area=$(( $l * $w ))
echo $area
plots=$(( $area * 25 ))
echo $plots
acres=$(echo $plots  2.2957 | awk '{ printf "%f", $1 * $2 }' )
echo $acres "acres"

