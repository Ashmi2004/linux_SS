#!/bin/bash
for i in $@
do 
	touch $i
	echo "File created : " $i
done
