#!/bin/bash

for file in `ls *.sh`;
do
folderName=`echo $file | awk -F. '{ print $1 }'`;
cp $file $folderName;
echo copied $file to $folderName/;
done
