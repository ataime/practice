#!/bin/bash

<<block
支持正则表达式的 unix 工具
grep 命令族
sed
awk
more,less
ed,vi,vim


1. ^  行首定位符 
2. $  行位定位符
3. .  单个字符匹配
4. *  限定符
5. [] 字符集匹配
6. [^] 字符集不匹配
7. 正则表达式  \(love\).*\1  表示匹配两个 love 中间包含任意个字符串的文本行，其中 \1 表示引用前面的 love
8. a\{2,3\}  表示字符 a 重复2-3次
9. \<hello  匹配含有以字符串 hello 开头的单词文本行
10. hello\>  匹配含有以字符串 hello 结尾的单词文本行

扩展正则：
11. + 限定符
12. ? 限定符
13. (a|b|c) 等价于 [abc]

perl 正则：
14. \d 数字匹配
15. \D 非数字匹配
16. \s 空白字符匹配 等价于 [\f\n\r\t\v]
17. \S 非空白字符匹配 等价于 [^\f\n\r\t\v]

18. [0123456789]  [0-9]


grep语法
grep [options] pattern [file ...]
-c 只打印匹配的文本行的行数，不显示匹配的内容
-i 匹配时忽略字母的大小写
-h 当搜索多个文件时，不显示匹配文件名前缀
-l 只列出含有匹配的文本行的文件名，不显示具体的匹配内容
-n 列出所有的匹配的文本行，并显示行号
-s 不显示关于不存在 或者无法读取文件的错误信息
-v 只显示不匹配的文本行
-w 匹配整个单词
-x 匹配整个文本行
-r 递归搜索
-q 禁止输出任何匹配结果，以退出状态码判断是否成功
-b 打印匹配的文本行到文件头的偏移量，以字节为单位
-E 支持扩展表达式
-P 支持 perl 正则表达式
-F 不支持正则表达式，将模式按字面意思匹配
block


