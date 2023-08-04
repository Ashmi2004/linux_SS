#!/bin/bash
read -p "Enter the directory to be backed up: " dir
read -p "Enter backup filename: " filename
if [ -d $dir ]
then 
	tar -zcf $filename $dir
else
	echo "Directory whose backup is required, doesn't exists !"
fi
