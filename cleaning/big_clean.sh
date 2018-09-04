#!/bin/bash

archive=$1
scratch=$2
here=$(pwd)

echo $here

mkdir $scratch

tar -xzf $archive -C $scratch

cd $scratch

files=$(grep -rl "DELETE ME" *)

for filename in $files
do
#	echo $filename
	rm $filename
done

cd ~
cd $here

echo $(pwd)

tar -cf $here/cleaned_$archive $scratch
