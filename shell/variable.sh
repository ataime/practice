#!/bin/bash

#查看环境变量
env

#变量的作用域：
# 在函数内外 定义的变量都是全局变量，在函数内使用 local 修饰的变量 是局部变量.
v2=100
func(){
	local v2=200
}
func
echo $v2

#shell 中的系统变量 $? 上次退出返回值 ,$$ 程序PID

#unset var_name 清空变量

<<BLOCK
	
控制变量属性 declare,typeset
declare -p var_name

-p : 显示所有变量值
-i : 变量定义为整数
-r : 只读
-a : 数组变量
-f : 显示所有自定义函数，包括名称和函数体
-x : 将变量设置成环境变量
	
BLOCK 


<<BLOCK
反引号 被解释成命令
单引号 被解释为字符串
双引号 解释为变量

BLOCK

# export 将变量声明为环境变量




