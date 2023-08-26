#!bin/bash
extension=$1
name=$2
count=1
for files in *.$1
do
	newfile=$2$count.$1
	mv $files $newfile
	count=$(($count+1))
done
