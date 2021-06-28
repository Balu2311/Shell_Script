#!/bin/bash -x
for file in `find . -maxdepth 1 -type f -mtime -7`
do
	echo $file
done

