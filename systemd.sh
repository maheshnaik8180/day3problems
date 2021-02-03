#! /bin/bash -x
 for file in '*.log';
do
cat access.log | grep "systemd"  
done
