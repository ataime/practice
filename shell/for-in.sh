#! /bin/sh
for filename in `ls ..`
do 
	if echo "$filename" | grep 'txt'
	then 
		echo $filename
	fi
done

