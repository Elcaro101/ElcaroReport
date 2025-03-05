# ElcaroReport 

![GitHub License](https://img.shields.io/github/license/Elcaro101/ElcaroReport) ![GitHub top language](https://img.shields.io/github/languages/top/Elcaro101/ElcaroReport) ![GitHub commit activity](https://img.shields.io/github/commit-activity/w/Elcaro101/ElcaroReport) ![GitHub Release](https://img.shields.io/github/v/release/Elcaro101/ElcaroReport)

> 本模板基于ctexart类编写，使用双面排版，自动生成空白页从奇数页开始正文。

~~~
ElcaroReport
│  .gitignore
│  cover.tex				# 封面文件
│  LICENSE
│  main.pdf					# 示例输出
│  main.tex					# 主体文档
│  README.md
│  style.cls				# 样式文件
│  test.bib					# 引文文件
│
├─figures					# 图片存放
│      nwafu_icon.png
│      test2.png
│
└─sections					# 小节文件
        section1.tex
        section2.tex
~~~

### Tips:

1. 超链接颜色更改可参照 `xcolor` 宏包中色彩集的描述
2. 参考文献引文格式参考 `gb7714-2015ay` ，排序方式为先中文后英文，中文部分按照拼音，英文部分按照字母
3. 参考文献使用biber编译，推荐使用 `XeLaTeX` --> `biber` --> `XeLaTeX` --> `XeLaTeX` 
