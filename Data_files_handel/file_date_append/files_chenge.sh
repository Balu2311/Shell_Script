#!/bin/bash -x
date=$(date +%d%m%Y)
for file in `ls *.log.1`
do
        bname=${file%.*.*}
        ename=${file#*.}
        lname=${ename%.*}
        mv "$file" "$bname"-"$date.$lname"
done

