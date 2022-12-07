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

#UC4
answer3=$(($c + $a / $b))

echo "$answer3"

#UC5
answer4=$(($a % $b + $c))

echo "$answer4"

#UC6
declare -A Result
Result[0]="$answer1"
Result[1]="$answer2"
Result[2]="$answer3"
Result[3]="$answer4"

echo "Result=${Result[@]}"

#UC7
for ((i=0; i<4; i++));
do
	array[$i]=$(( ${Result[$i]} ))
done

echo "array=${array[@]}"

#UC8
echo "Sorted Array Value in Decending Order"
printf '%s\n' "${array[@]}" | sort -nr
