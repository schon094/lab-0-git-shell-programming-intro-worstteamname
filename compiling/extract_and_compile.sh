#!/bin/bash

number=$1
name=$2

#echo $number 
#echo $name

tar -xzf NthPrime.tgz -C $name

gcc -o NthPrime  $name/NthPrime/main.c $name/NthPrime/nth_prime.c $name/NthPrime/nth_prime.h

#gcc -o $name/NthPrime/NthPrime  $name/NthPrime/main.c $name/NthPrime/nth_prime.c $name/NthPrime/nth_prime.h

./NthPrime $number

#./$name/NthPrime/NthPrime $number
