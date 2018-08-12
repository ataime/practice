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
-b  忽略前导空格或者制表符，找出第一个非空字符
-c  测试文件是否已经排序
-d  根据字典顺序排序
-f  忽略大小写
-i  仅仅比较可打印字符
-n  根据算术值进行比较
-R  根据hash值随机排序
-r  颠倒排序结果
-k  定义排序关键字
-m  仅仅排序已经排好序的文件，不执行排序操作
-o  将排序结果写入文件，而不是标准输出设备
-t  指定字段分隔符，默认为空格
-u  删除重复的行，只保留第一个




cat -n  显示行号
grep -n 显示行号

nl [option] ... [file] ...
-b   显示风格，可以取 a,t,n 等值。a 表示为所有行添加行号，t表示仅仅为非空行添加行号，n 表示不添加行号
-i   行号增量，默认值1
-v   行号的起始值，默认1


wc [option] ... [file] ...
-c   统计文本字节数
-m   统计字符数
-l   统计行数
-L   统计最长行的长度
-w   统计单词数


cut option ...  [file] ...
-b    只选择指定的字节
-c    只选择指定的字符
-d    自定义列分隔符，默认值为制表符
-f    只选择列表中指定的文本列，文本列用列号表示，多个列之间用逗号隔开
-n    取消分割多字节字符
-s    不输出不包含列分隔符的行


paste [option] ... [file] ...
-d    指定拼接结果中列分隔符。默认情况下 paste 命令生成的文件使用制表符分隔列
-s    将多个文件串行的拼接在一起，即使后面文件的内容追加前面一个文件的后面


join [option]... file1 file2
-l    field  根据第1个文件的指定列进行连接。其中参数 field 用来指定第1个文件中用来联接的关键字列
-2    field  根据第2个文件的指定列进行联接。 其中参数 field 用来指定第2个文件中用来联接的关键字列
-a    filename  指定是否输出不匹配的行。其中参数filenum 可以取值为1或者2，分别代表参与联接的第1个文件和第2个文件
-e    string   使用参数string 指定的字符串代替空列
-i    在比较关键字时忽略大小写
-o    自定义输出列
-t    自定义列分隔符
-v  filenum  该选项的功能是 输出filenum 指定文件的所有的行




tr [option] ... set1 [set2]
-c    用字符集 set2 替换字符集set1中没有包含的字符
-d    删除字符集set1中的所有字符，不执行替换操作
-s    压缩set1中重复的字符集
-t    将字符集set1用set2转换




sed [option]  [script]  [inputfile...]
-n    取消默认输出
-e    允许执行多个脚本
-f    从脚本文件中读取命令
-i    直接修改原始文件
-l    指定行的长度
-r    在脚本中使用扩展正则表达式
-s    默认情况下，sed 将把命令行指定的多个文件名作为一个长的连续的输入流。
-u    最低限度的缓存输入与输出

sed 编辑命令的基本语法
[address1 [,address2]]  command [argument]

选择文本   [address1 [,address2]] p  ； 例： sed '1,3p' students.txt
替换文本 sed 's/e/E/g' student.txt
删除文本第一行   sed -e '1 d' students.txt
追加文本  sed '2 a 200200109   Tom' students.txt
插入文本  sed '2 i 200200109   Tom' students.txt


awk
常用的 awk 系统变量
$0   记录变量，标识当前正在处理的记录
$n   字符变量，其中 n 为整数，且 n 大于1.表示第 n 个字段的值
NF   整数值，表示当前记录（$0 所代表的记录）的字段数
NR   整数值，表示 awk 已经读入的记录数
FILENAM  表示正在处理的文件的名称
FS   字段分隔字符，默认值是空格或者制表符
RS   记录分隔符，默认值是换行符





比较文件：
comm [option] file1 file2
-1    不显示第1个文件中独有的文本行
-2    不显示第2个文件中独有的文本行
-3    不显示两个文件中共同的文本行
--check-order 检测参与比较的两个文件是否已经排序
--nocheck-order  不检测参与比较的两个文件是否已经排序


diff















 









BLOCK

