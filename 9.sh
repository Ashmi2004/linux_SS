#!/bin/bash
read -p "File whose lines are required (with extension): " filename
read -p "Start line of excerpt: " startP
read -p "End line of excerpt: " endP
awk -v s="$startP" -v e="$endP" 'NR==s, NR==e { print NR, $0 }' $filename


