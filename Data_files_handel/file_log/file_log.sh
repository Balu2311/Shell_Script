
#!/bin/bash -x
for file in `ls *.log.1`
do
	mv "$file." "${file}-$(date +"%d%m%Y")" 
done


#! /bin/bash -x
#date=$(date +%Y%m%d)
#for file in `ls *.log.1`
#do
 #   basename=${file%**}    # Remove extension
  #  extension=${file#*.}  # Remove basename
   # mv "$file" "$basename"-"$date.$extension"
#done
