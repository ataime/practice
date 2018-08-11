#! /bin/bash

# 语法： [ 1 -eq 2 ] 或者 test 1 -gt 3 

# 当使用变量参与运算时，需要使用 [[ ]]

i=3
if [ 1 -eq 2 ]
then
	echo "OK"
elif [[ i -gt 2 ]]
then	
	echo "NONE"
fi


<<BLOCK

如果测试为真，返回值 $? 为0 ， 测试为假 $? 为非 0

字符串运算符：
string 				|	是否为空
string1 = string2 	| 字符串是否相等
string1 != string2 	| 字符串是否不相等
-n string			| string 是否非空串
-z string  			| string 是否空串


整数运算符：
num1 -eq num2		| num1 是否等于 num2
num1 -ne num2		| num1 是否不等于 num2
num1 -gt num2		| num1 是否大于 num2
num1 -lt num2		| num1 是否小于 num2
num1 -ge num2		| num1 是否大于等于 num2
num1 -le num2		| num1 是否小于等于 num2

注意：11 = 12 这个运算会将 11，12 转化为字符串 比较。


文件操作符：
-a file  | 文件是否存在
-b file | 文件存在，且为块文件
-c file | 文件存在，且为字符文件
-d file | 文件存在，且为目录
-e file | 同 -a file
-s file | 文件长度大于0，或者 为非空文件
-f file | 文件存在，且为常规文件
-w file | 文件存在，且可写
-L file | 文件存在，且为符号链接
-u file | 文件是否设置了suid 位
-r file | 文件存在，且可读
-x file | 文件存在，且可执行


逻辑操作符：
! expression 					| 逻辑非
expression1 -a expression2  	| 逻辑与
expression1 -o expression2  	| 逻辑或



条件判断语句
当 expression 为真时 即#?为0，执行if内的语句
语法：
if expression
then 
	statement1
	statement2
fi

或者：
if expression;then 
	statement1
	statement2
fi


if..elif..else.. 语法：
if expression1
then 
	statement1
	statement2
elif expression2
then
	statement3
else
	statement4
fi


退出：
非0 退出：exit 120 
exit 0



多条件判断语句：
case variable in 
value1)
	statement1
	statement2
value2)
	statement3
*)
	statement4
esac




运算符：
1 . expr 是一个shell 命令，可以计算表达式的值，语法 ： expr expression, 对 expression 有格式要求
2 . $(()) 计算表达式，这个形式可以采用松散或者紧凑的格式来书写表达式
3 . $[] 同 $(()).
4 . let , let n=n+1

+=	| 
-=	|
*=	|
/=	| 
%=	| 求模赋值
<<	| 左移
>>	| 右移
&	| 按位与
|	| 按位或
~	| 按位非
^	| 按位异或
复合运算：
<<=	|
>>=	|
&=	|
|=	|
^=	|

自增：
++variable
variable--

数据进制：
#十进制
((x=20))
#八进制
((x=020))
#十六进制
((x=0x20))
 
#二进制
((x="2#100000"))
echo "$x"

#八进制
((x="8#123"))

#十六进制
((x="16#32"))

BLOCK


result=`expr 2-100`
echo $result
result=`expr 2 - 100`
echo $result

echo $(( 5 +9))
