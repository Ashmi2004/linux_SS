#!/bin/bash
if [ $# -eq 3 ]
then
echo $@
else
echo "Give exact three inputs ! " 1>&2;
fi
