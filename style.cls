\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style}[2025/02/28 Custom Style]

\LoadClass[twoside]{ctexart}

\ctexset{
	section={name={第,节}, number=\arabic{section}}
}

\usepackage{fontspec}
\setmainfont{Times New Roman}


\usepackage[top=3cm,bottom=2cm,left=2.5cm,right=2.5cm]{geometry}
\usepackage{graphicx}  
\usepackage{tocloft}   

\usepackage{fancyhdr}
\fancyhf{}


\fancyhead[LO]{\textnormal{\kaishu\rightmark}} 
\fancyhead[RE]{\textnormal{\kaishu\rightmark}} 
\fancyhead[LE]{--\ \thepage\ --}  
\fancyhead[RO]{--\ \thepage\ --}  

\setlength{\headheight}{13pt} 
\pagestyle{fancy}

\renewcommand\sectionmark[1]{%
	\markright{\CTEXifname{\CTEXthesection——}{}#1}}

\renewcommand{\subsectionmark}[1]{} % 让 subsection 不覆盖 rightmark

\newcommand{\clearforoddpage}{
	\clearpage
	\ifodd\value{page}
	{}
	\else
	\thispagestyle{empty} 
	\hbox{} 
	\newpage
	\fi
}

\renewcommand{\contentsname}{\begin{center} 目\quad 录 \end{center}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}} 
\renewcommand{\cftdotsep}{2}

\renewcommand{\cftsecafterpnum}{\textbf{ --}} 
\renewcommand{\cftsecpagefont}{\textbf{-- }} 
\renewcommand{\cftsubsecafterpnum}{\textbf{ --}} 
\renewcommand{\cftsubsecpagefont}{\textbf{-- }} 
\renewcommand{\cftsubsubsecafterpnum}{\textbf{ --}} 
\renewcommand{\cftsubsubsecpagefont}{\textbf{-- }} 

\usepackage{titlesec}

%\titlespacing*{\section}{0pt}{0.8\baselineskip}{\baselineskip}  
\titlespacing*{\subsection}{0pt}{0.1\baselineskip}{0.1\baselineskip}  

\usepackage{indentfirst} % 确保 section/subsection 后的首段也缩进
\setlength{\parindent}{2em} % 明确设置段首缩进

\usepackage[dvipsnames]{xcolor}
%\definecolor{myLinkColor}{HTML}{277897}   
\usepackage[
colorlinks,
linkcolor=black,   
citecolor=NavyBlue,   
urlcolor=NavyBlue,      
menucolor=NavyBlue,     
]{hyperref}

\usepackage{caption}  % 处理图表标题
\usepackage{float}    % 允许控制浮动体位置
\usepackage{caption}
\captionsetup{
	font=bf,
	labelsep=quad,  
	belowskip=-10pt    % 调整标题和下方正文的间距（默认 12pt 左右）
} % 让 "图 x.x" 和标题之间用空格


% 让 figure 编号与章节编号联动
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
\@addtoreset{figure}{section} % 章节编号重置

% 自定义插图环境
\newenvironment{customfigure}[2][htbp] % #1: 选项（默认htbp），#2: 图标题
{%
	\begin{figure}[#1]
		\centering
		\def\customcaption{#2} % 先存储标题
	}
	{%
		\caption{\customcaption} % 调用存储的标题
		\label{fig:\thesection-\arabic{figure}} % 生成 label
	\end{figure}
}


\usepackage{booktabs}   % 用于绘制三线表
\usepackage{array}      % 额外的表格功能
\usepackage{amsmath}  % 解决 numberwithin 报错

% 设置表格标题样式
\captionsetup[table]{
	font=bf,        % 表题黑体
	labelsep=quad,  % “表 2.1” 和标题之间的空格
	aboveskip=2pt,  % 表格与标题之间的距离
	belowskip=-5pt  % 表题和正文之间的间距
}

% 让表格编号和章节联动，例如“表 2.1”
\numberwithin{table}{section}

\numberwithin{equation}{section}  % 公式编号随章节变化



\usepackage[backend=biber,style=gb7714-2015ay,sorting=gb7714-2015,
gblanorder=chineseahead,sortlocale=zh__pinyin,gbmedium=false]{biblatex}
\addbibresource{test.bib}

\endinput
