#!/bin/bash

read -p "Enter the path of the file" p
op=$(find "$p" -type f | xargs -I{} wc -l "{}"| awk '$1 < 2 {print $2}')


echo -e "The files with less than 2 lines are \n $op"


