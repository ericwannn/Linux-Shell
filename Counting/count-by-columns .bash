#!/bin/bash


#This command helps to count the file only according some certain columns.
#It is only suitable for cases where the values are number.

#For example, there is three column of Name, Number and Country,
#if we need the infomation like how many people come from each country,
#uniq -c command might not be efficient. Instead, awk could be very fast.   

#The following command count along only the third column.
awk ' { a[3]++ } END { for(i in a) print { a[i] " " i } } ' your_file

#The following command count along the second and third column.
awk ' { a[2][3]++ } END { for(i in a) print { a[i] " " i } } ' your_file
