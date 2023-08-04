#!/bin/bash
read -p "Enter a filename for processing: " filename
i="1"
while [[ $i -gt 0 ]];
do
	echo -e "Choose one of following functions to perform on file: \n 1. Print File contents \n 2. Find lines with pattern \n 3. Print specific column \n 4. Edit File 
5. Find employees who has id >200  \n 6. Find list of employees in department \n 7. No of employees in department \n 8. EXIT"
	read -p "Type an option (1-7) : " option
	case $option in 
		"1") awk '{print ;}' $filename
			;;
		"2") read -p "The pattern to be found: " pattern
			awk " /$pattern/ {print ;}" $filename
			;;
		"3") read -p "Number the column that you want : " col 
			case $col in 
				"1") awk '{print $1;}' $filename ;;
				"2") awk '{print $2;}' $filename ;;
				"3") awk '{print $3;}' $filename ;;
				"4") awk '{print $4;}' $filename ;;
				"5") awk '{print $5;}' $filename ;;
				"6") awk '{print $6;}' $filename ;;
			esac
			 ;;
		"4") awk -i inplace 'BEGINFILE { print "ID NAME ROLE DEPARTMENT SALARY";}
			{print;}
			ENDFILE {print "Report Generated";}' $filename
			;;
		"5") awk '$1 > 2000' $filename
			;;
		"6") read -p "Enter department name : " dept
			awk '$4 ~/Banking/' $filename

			;;
		"7")  read -p "Enter department name : " dept
			awk 'BEGIN {count=0;}
			$4 ~/Banking/ {count++;}
			END { print "Total employees in $dept: ",count;}'
			;;
		"8")
			i="0"
			exit 1
			;;
			
	esac
done
