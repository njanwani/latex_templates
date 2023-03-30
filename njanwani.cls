\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{njanwani}[2014/02/09 v1.0 njanwani document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\usepackage{bera}
\usepackage[T1]{fontenc}
\usepackage{amsmath,amsfonts,amsthm,amssymb}
\usepackage{setspace}
\usepackage{fancyhdr}
\usepackage{lastpage}
\usepackage{extramarks}
\usepackage{chngpage}
\usepackage{soul}
\usepackage{parskip}
\usepackage{graphicx,float,wrapfig}
\usepackage{enumerate}
\usepackage{titling}
\usepackage{verbatim}

\usepackage[usenames]{color}
\usepackage{tikz}
\definecolor{forestgreen}{RGB}{34,139,34}
\definecolor{darkblue}{RGB}{0,104,139}

\usetikzlibrary{arrows,positioning} 
\tikzset{
    %Define standard arrow tip
    >=stealth',
    %Define style for boxes
    punkt/.style={
           rectangle,
           rounded corners,
           draw=black, very thick,
           text width=6.5em,
           minimum height=2em,
           text centered},
    % Define arrow style
    pil/.style={
           ->,
           thick,
           shorten <=2pt,
           shorten >=2pt,}
}

\edef\oldtt{\ttdefault}
\usepackage[scaled]{beramono}
\usepackage[T1]{fontenc}
\renewcommand*\ttdefault{\oldtt}

\usepackage{listings}
\lstset{ %
    language=Python, numbers=left, numberstyle=\footnotesize, stepnumber=1,
    numbersep=4pt, showspaces=false, showstringspaces=false, tabsize=4,
    breaklines=true, breakatwhitespace=false,
    basicstyle=\footnotesize\fontfamily{fvm}\selectfont, columns=flexible,
    mathescape=true, escapeinside={(*}{*)},
    %morekeywords={},
    keywordstyle=[2]\color{magenta}, keywords=[2]{FlipCoin, RollDie},
    otherkeywords={@requires, @ensures}
}
\newcommand{\codefont}{\fontfamily{fvm}\selectfont}

\usepackage{todonotes}

\topmargin=-0.45in 
\evensidemargin=0in
\oddsidemargin=0in 
\textwidth=6.5in   
\textheight=9.0in  
\headsep=0.25in    

% Setup the header and footer
\pagestyle{fancy}
\lhead{\emph{\thetitle\;--\;\theauthor}}
\chead{}
\rhead{\thepage}
\lfoot{\lastxmark}
\cfoot{}
\renewcommand\headrulewidth{0pt}
\renewcommand\footrulewidth{0pt}

\renewcommand{\@maketitle}{%
    \begin{center}%
    {\Large \bf \@title}\\[0.5em]%
    {\large \@author}%
    \end{center}%
    \vspace{2em}

}
% \author{Neil Janwani}
% \title{\color{red}THE TITLE}
% \AtBeginDocument{\maketitle\thispagestyle{empty}}

% add your own packages here
% commands for header, fill in the appropriate values
\newcommand{\codename} {Neil Janwani} % type name here
\newcommand{\settitle} {Problem Set 4} %type set title here (ex. Problem Set 3, Midterm)
\newcommand{\latesub} {No} % type yes/no indicating late submission
% a few helpful commands 
\newcommand{\RR}{\mathbb{R}} % typing \RR prints the Blackboard R used for Real Numbers
\newcommand{\NN}{\mathbb{N}} % typing \NN prints the Blackboard N used for Natural Numbers
\newcommand{\ZZ}{\mathbb{Z}} % typing \ZZ prints the Blackboard Z used for Integers
% construct your own commands here
\newcommand{\GCD}{\textrm{GCD}}
% commands for header, don't adjust

\AtBeginDocument{
\thispagestyle{empty}
\begin{center}\framebox{\vbox{ \vspace{2mm}
\hbox to 6.5in {\textbf{CS~21~~~Decidability and Tractability}\hfill \textbf{\today}} \vspace{4mm}
\hbox to 6.5in {\Large \hfill \settitle  \hfill} \vspace{2mm}
\hbox to 6.5in {\textbf{Name} \codename \hfill \textbf{Late Submission: } \latesub} \vspace{2mm}}
}\end{center} \vspace*{1mm}
\pagestyle{fancy}\lhead{Name: \codename} \chead{\settitle} \rhead{\today}
% useful packages
\usepackage{amsmath, amssymb, amsthm, enumitem, graphicx, float, minted, multicol, array, amsfonts, wrapfig,lipsum}
\newminted{XML}{frame=single,framerule=1pt}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{definition}{Definition}

}
