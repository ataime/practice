#! /bin/bash


#shell 中函数必须在调用前定义

function sayhello(){
	echo "Hello World!"
}

#调用
sayhello



#函数中调用函数
function john(){
	echo "Hello, this is John."
}

function alice(){
	john # 调用函数
	echo "Hello,this is Alice."
}

# 调用函数
alice 




#函数返回值
sum(){
	let "z = $1 + $2"
	return "$z"
}
# 调用函数
sum 22 4
echo $?



#函数别名
alias la="ls -la"
unalias la
unset la




#函数参数
func()
{
	echo "all parameters are $*"
	echo "the first  parameter are $1"	
}

func 1 2 3


#位置移动参数
# shift 命令使得脚本的所有位置参数向左移动一个位置
func2()
{
	while (( $# > 0 ))
	do
		echo "$1"
		shift
	done
}



#通过getopts接收函数参数
#语法： getopts optstring [args]
#系统变量 $OPTARG 是一个内置的系统变量

func3(){
	#逐个接收选项及参数
	while getopts "a:b:c" arg
	do
		case "$arg" in 
			a)
				echo "a's argument is $OPTARG"
				;;
			b)
				echo "b's argument is $OPTARG"
				;;
			c)
				echo "c"
				;;
			?)
				echo "unkwon"
				exit 1
				;;
		esac
	done
}

func3 -a hello -b world 



#间接传参
var=name
name=Joh
#变量的间接引用语法: ${!var}

echo ${!var}



#库函数的引入语法:  . filename














