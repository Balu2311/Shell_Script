#!/bin/bash -x
for file in `ls *.txt`
do 
	FolderName=`echo $file | awk -F. '{print $1}'`
	rm -r $FloderName
	mkdir $FolderName
	mv $file $FolderName
done
