#!/bin/bash -x
mkdir -p dir

if [ ! -e $dir ]
then
	mkdir $dir
elif [[ ! -d $dir ]]
then
	echo "$FolderName already exists"
#else
 #   	mkdir $FolderName
fi
