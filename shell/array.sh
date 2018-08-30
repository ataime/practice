#!/bin/bash

#通过指定元素的值来定义数组
arr[1]=one
arr[3]=three

echo "${arr[@]}"

#通过declare 语句定义数组
declare -a arr1
arr1[1]=one
arr1[3]=three

echo "${arr1[@]}"



#通过集合定义数组
arr2=(1 2 3 4 5 )
#输出第1个元素的值
echo "${#arr2[0]}"
#输出所有元素的值
echo "${arr2[@]}"
echo "${arr2[*]}"
#输出数组的长度
echo "${#arr2[@]}"


#通过键值对定义数组
arr3=([0]=val1  [1]=val2  [2]=val3 )


#数组访问
#通过数组名访问数组第一个元素的值
arr3=(a b ccccc)
echo "${arr3}"
echo "${arr3[0]}"

#数组长度
echo ${#arr3[@]}
echo ${#arr3[*]}
#获取单个元素的长度
echo ${#arr3[2]}


#数组切片获取子数组
linux=("suse" "ubuntu" "uts" "centos" "redhat" "debian")
echo ${linux[@]:2:2}

#数组元素替换
echo ${linux[*] /suse/SUSE}
echo ${linux[*] /ut/UT}

#删除数组指定元素
unset linux[1]
#删除数组，变量
unset arr3



#复制数组
newlinux={"${linux[@]}"}

#连接数组
arr4=("${arr1[@]}" "${arr2[@]}")
echo $arr4

#加载文件内容到数值
content=(`cat "array.sh"`)
echo ${content}

