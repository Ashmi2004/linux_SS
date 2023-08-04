#!/bin/bash
echo -e 'Choose from below:\n 1. ls \n 2. pwd \n 3. who \n 4. exit'
read -p "Type 1/2/3/4: " input
case $input in
	"1")
		ls
	;;

	"2")
		pwd
	;;
	"3")
		who
	;;
	"4")
		exit
	;;
	*)
		echo "Wrong input received !"
	;;
esac
