#1/bin/bash

#display all data
cat "data.csv"

#Printing EEname and TotalPay who has BasePay greater than 10000
cat "data.csv" | awk '$4>10000 {printf $2"\t\t"$7"\n"}'

#Aggregate TotalPay of employees whose jobtitle is 'CAPTAIN'
cat "data.csv" | grep CAPTAIN | awk '{sum+=$7}END{printf "Sum="sum"\n"}'

#Printing JobTitle and OverTime Pay who has Overtimepay between 7000 and 10000
cat "data.csv" | awk '{ if (($5>=7000) && ($5<=10000)) {printf $3"\t\t"$5"\n"}}'

#Printing average BasePay
cat "data.csv" | awk '{sum+=$4}{Average=sum/NR}{printf "No of BasePay Records= "NR"\tAverageBasePay= "Average"\n"}'

