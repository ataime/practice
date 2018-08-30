#!/bin/bash

for var in 1 2 3 4 5
do
	if [[ var -eq 2 ]]
	then
		continue
	fi

	if [[ var -eq 4 ]]
	then
		break
	fi

	echo "$var"
done

for arg in $*
do 
	echo "${arg}"
done


for (( i=1;i<5;i++ ))
do
	echo $i
done



until [[ "$ii" -eq 2 ]]
do
	useradd user$ii
	echo "password" | passwd --stdin user$ii > /dev/null
	let "ii++" 
done


while [[ "$i2" -lt 10 ]]
do
	let "square=i2*i2" 
	echo "$i2*$i2=$square"
	let "i2=i2+1"
done

