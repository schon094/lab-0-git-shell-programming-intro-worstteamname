#!/bin/bash

archive=$1
scratch=$2
here=$(pwd)

#make scratch directory
mkdir $scratch

#extract the archive
tar -xzf $archive -C  $scratch

#move to scratch directory
cd $scratch

#create a list of the files to be deleted
files=$(grep -rl "DELETE ME" *)

#delete each of the files from the list
for filename in $files
do
	rm $filename
done

#compress the directory
tar -cvf $here/cleaned_$archive $scratch . 
