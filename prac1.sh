#!/bin/bash
filename="employee.txt"
i="1"
while [[ $i -gt 0 ]];
echo -e "Choose from the options below : \n 1. Add a record \n 2. Delete a record \n 3. Search a record \n 4. Sort the records \n 5. List all records \n 6. Exit"
read -p "Choose from options (1/2/3/4/5) : " option

do
	case $option in
		"1") 
			read -p "Enter Employee id : " eid
			read -p "Enter Employee name : " ename
			read -p "Enter Employee phone number :  " ephone
			echo "$eid $ename $ephone" >> $filename
			;;
		"2")  
			read -p "Enter Employee id to delete : " eid
			sed "/^$eid/d" $filename > "employee1.txt"
			mv "employee1.txt" $filename
			;;
		"3") 
			read -p "Enter Employee id for searching : " eid
			sed -n "/^$eid/p" $filename
			;;
		"4")
			read -p "Do you wanna sort in 1. EID 2. Ename " op
			case $op in 
				"1")
					sort -h -k 1 $filename
				       	;;
				"2") 
					sort -k 2 $filename
					;;
			esac
		       	;;
		"5")
			cat $filename
		       	;;
		"6" | *) exit ;;

	esac
done
