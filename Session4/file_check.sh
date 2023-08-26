#!bin/bash
file=$1
directory=$2
for x in $2/*
do 
	if [[ -e $1 ]]
	then
		echo "file exists"
		echo "content of $1 is :" 
		cat $1
		break
	else 
		echo "$1 does not exist"
	fi
done
