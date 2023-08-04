#!/bin/bash
find $1 -type f,d,l >/dev/null 2>&1
if [ $? -eq 0 ]
then 
	echo "File with name $1 found"
else 
	echo "File with name $1 not found !"
fi
