#!/bin/bash

echo "$# parameters"

echo "$@"

# 执行方式：sh xx.sh a b 's d'

<<BLOCK
参数说明
$n 第 n 个参数
$# 参数个数
$* 字符串形式返回参数值
$@ 数组形式返回参数值
$_ 保存之前执行命令的最后一个参数

BLOCK


