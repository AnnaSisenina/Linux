#!/bin/bash

ownersFiles=$(ls -l | tr -s ' ' '\t' | cut -f '3 9')
count=0
for i in $ownersFiles
do
count=$((count+1))
if  (($count%2))
then
directory=$i
mkdir -p $directory
else
if [ -f./$i ]
then
cp ./$i ./$directory/$i
fi
fi
done

