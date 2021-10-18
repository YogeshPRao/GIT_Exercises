#!/bin/bash


#This script is to list all the files in the directory and print their absolute paths.




for i in `ls $search_dir`
do
	echo -e "FILE : $i \nAbsolute Path : `realpath $i`"
done


