#!/bin/bash -x
DiceNumber=$(( ( RANDOM % 6 )  + 1 ))
echo $DiceNumber
