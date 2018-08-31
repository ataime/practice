#!/bin/bash

<<block
echo 命令的转义字符
\a 报警符，相当于 ASCII 码的 BEL 字符
\b 退格符
\c 禁止后续输入文本
\f 换页符
\n 换行符
\r 回车符
\t 水平制表符
\v 垂直制表符
\\ 反斜线

-n 选项 不输出结尾的换行符

block



for((i=1;i<10;i++))
do
	for((j=1;j<$i;j++))
	do
		echo -n -e "$i*$j\t"
	done
	# 换行
	echo ""
done




<<BLOCK
fold [options] [file ..]
-b  按字节计算宽度，默认是按列计算宽度
-s  在空格处断行
-w  指定宽度，默认值是80列


fmt [-width] [option] [file]
-width 指定文本行的列数，默认75，即每行显示75个字符
-c  保留每个段落的前两行的缩进，该段落剩余的行的左边距与第2行相同
-t  该功能与-c选项基本相同
-s  只折断超出指定宽度的行，不合并少于指定宽度的行
-u  统一空格的个数，单词之间保留1个空格，句子之间保留2个空格
-w  指定每个行的最大宽度，默认值75列


rev [file ..]
反转字符顺序


pr [option]..  [file]..
-column  指定输出的栏数，默认值1
-a     	 修改-column的显示效果，水平创建栏，与-column 选项配合使用
-d       产生两个空格的输出
-F或-f   使用换页符代替换行符实现分页
-h       指定页眉
-l       指定每页的行数
-o       指定每行的缩进字符数量
-w       指定页面宽度



sort [option]... [file]...







BLOCK

