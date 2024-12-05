#!/bin/bash


read -p " Enter the size of the file as (+/-) in M or k or G " size

find . -type f -size $size > output1.txt

if [[ $? -eq 0 ]]; then
	echo " Files that are $size has been moved to output1.txt"
	echo -e "\n The files  are\n"
	cat output1.txt

else
	echo "Command not executed, There is as issue"
fi


