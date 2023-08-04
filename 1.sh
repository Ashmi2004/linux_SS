#!/bin/bash
#lsblk > blockfile.txt
ls -al /dev | grep ^b > blockfile.txt
echo "Files : " ; wc -l blockfile.txt

