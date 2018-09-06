#!/bin/bash

number=$1
name=$2

#echo $number 
#echo $name

#extract directory
tar -xzf NthPrime.tgz -C $name

#compile Nth Prime
gcc -o NthPrime  $name/NthPrime/main.c $name/NthPrime/nth_prime.c $name/NthPrime/nth_prime.h

#execute Nth Prime
./NthPrime $number

