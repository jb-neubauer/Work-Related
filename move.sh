#!/bin/bash
#Copies files to a .bak then removes the first two characters of all file names
for file in * 
do cp $file $file.bak;  
mv $file $(echo $file | sed -e 's/^..//');


done

