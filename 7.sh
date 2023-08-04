#!/bin/bash
echo -e 'Welcome to File handling, choose what assistance is required from options below : \n 1. Copying a file \n 2. Removing a file \n 3. Renaming a file'
read -p "To choose type cp/rm/re : " input
case $input in 
	"cp")
		read -p "Source file name :" filename
		read -p "Destination path :" destination
		cp $filename $destination
	;;

	"rm")
		read -p "Name of file to remove :" filename
		rm -f $filename
	;;
	
	"re")
		read -p "Name of file to be renamed :" filename
		read -p "New name of file: " newName
		sudo mv $filename $newName
	;;
	*)
	echo "Wrong input received !"
	;;
esac
