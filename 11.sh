#!/bin/bash
fsOptions=exec df | awk '/dev/{print $1}'
read -p "Enter filesystem name from above options : " fsName
echo You chose the filesystem $fsName

echo -e  "\n Space Allocated : $( exec  df -h $fsName | awk 'NR==2{ print $2}') \n Space Used : $( exec  df -h $fsName | awk 'NR==2{ print $3}') \n Space Available : " $( exec df -h $fsName | awk 'NR==2{print $4}')

