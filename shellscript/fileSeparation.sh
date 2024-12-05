#!/bin/bash
#zip the file or folder

read -p "Enter the folder you want to compress" foldername
read -p "Enter the destination folfer where do you want to save" destination

newname="MyBackup-$(date +%d)-$(date +%m)-$(date +%y)"

zip -r "$destination/$newname.zip" "$foldername"

cd $destination
ls $destination 

