#!/bin/bash
#Uc1
read -p "Enter Number A:" a
read -p "Enter Number B:" b
read -p "Enter Number C:" c

#UC2
answer1=$(($a + $b * $c))

echo "$answer1"

#UC3
answer2=$(($a * $b + $c))

echo "$answer2"
