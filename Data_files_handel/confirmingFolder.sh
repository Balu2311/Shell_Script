#!/bin/bash -x
#Folder = $(mkdir "tan")
if [ -d temp ]
then
	echo "This Folder is alreday done"
else
	mkdir temp
	echo "Its created"
fi
