#!/bin/bash

folder=test4
for file in `ls`;
do
	if [ -d $folder ];
		then
		echo "File present"
		break;
	else
		mkdir $folder
		echo -e "File not found...\nCreated new folder"
		break;
	fi
done
