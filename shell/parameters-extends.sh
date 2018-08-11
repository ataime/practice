#! /bin/bash

#输出参数索引
echo "OPTIND starts at $OPTIND"
 
#接收参数
while getopts ":pq:" optname
	do
	case "$optname" in
		"p")
			echo "$optname"
			;;
		"?") 
			echo "Unknown option $OPTARG"
			;;
		*)
			echo "error"
			;;
	esac
	echo "OPTIND is now $OPTIND"
done


<<BLOCK

类似于 "ls -l" 中的 -l ,shell 程序中使用 getopts 命令,获取扩展参数.
getopts 命令后面的双引号中的第一个冒号告诉 getopts 命令忽略一般的错误信息
p 和 q 则是两个选项的名称，选项后面的冒号表示该选项需要一个值

BLOCK
