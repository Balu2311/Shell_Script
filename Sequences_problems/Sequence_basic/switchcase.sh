
#!/bin/Bash -x
for filename in $(ls)
do
	ext=${filename##*\.}
	case $ext in
		java) echo " $filename: java file"
			;;
		sh) echo "$filename: shell file"
			;;
		*) echo "$filename: Other type file"
			;;
	esac
done
