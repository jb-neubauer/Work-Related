#!/bin/bash
#Removes the first two characters of all file names
for file in *;
do mv $file $(echo $file | sed -e 's/^..//');
done
