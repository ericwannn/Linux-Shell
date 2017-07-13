#!/bin/bash

head="00000"
ls test | wc -l > temp
numberoffiles=$(cat temp)
echo "There are $numberoffiles inside that folder"

for (( i=1; i<=$numberoffiles; i++ ))
do
    file="test/data-$i"
    newfilename=$(echo $head$i | sed 's/.*\(.....\)/\1/')
    awk '$1' < $file > $newfilename
done

# rm temp