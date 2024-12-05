#!/bin/bash

read -p "Enter the path of the file" p
find "$p" -type f | xargs -I{} wc -l "{}"| awk '$1 < 2 {print $2}' > output.txt


echo -e "The files with less than 2 lines are \n" 
cat output.txt


