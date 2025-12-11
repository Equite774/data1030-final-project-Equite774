\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{chaistyle}[2024/10/18 My LaTeX Class]

\LoadClass[11pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Packages                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[margin=1in, headheight=14pt]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{bbm}
\RequirePackage{fancyhdr}
\RequirePackage{titling} % Include this package
\RequirePackage{amscd}
\RequirePackage{amsfonts}
\RequirePackage{stmaryrd}
\RequirePackage{algorithm, algorithmic}
\RequirePackage{wasysym}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{extarrows}
\RequirePackage[colorlinks, linktocpage, citecolor = red, linkcolor = blue]{hyperref}
\RequirePackage{color}
\RequirePackage{tikz}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{graphicx} % Required for inserting images
\RequirePackage{parskip}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Custom Commands for Header/Footer
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define commands for setting course name, title, name, document name, and semester
\newcommand{\setcoursename}[1]{\def\coursename{#1}}
\newcommand{\settitle}[1]{\def\documenttitle{#1}}
\newcommand{\setname}[1]{\def\name{#1}}
\newcommand{\setdocumentname}[1]{\def\documentname{#1}}
\newcommand{\setsemester}[1]{\def\semester{#1}}

% Default values
\setcoursename{Course Name}
\settitle{Document Title}
\setname{Name}
\setdocumentname{Document Name}
\setsemester{Semester}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Header and Footer Setup                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\footrulewidth}{1pt}
\fancypagestyle{plain}{
    \fancyhead[L]{\textbf{\coursename}}               % Left header: Course name
    \fancyhead[C]{\documenttitle}                     % Center header: Title
    \fancyhead[R]{\textbf{\name}}                     % Right header: Name
    \fancyfoot[L]{\documentname}                      % Left footer: Document name
    \fancyfoot[R]{\semester}                          % Right footer: Semester
}
\pagestyle{plain}

% Title
\setlength{\droptitle}{-4em} % Adjust the title drop distance
\renewcommand{\maketitle}{\begin{center}\huge\textbf{\@title}\\\vspace{0.5em}\Large\ifdefempty{\@date}{}{\@date}\end{center}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Theorems                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newtheorem{maintheorem}{Theorem}
\renewcommand*{\themaintheorem}{\Alph{maintheorem}}

\newtheorem{theorem}{Theorem}[section]
\newtheorem*{theorem*}{Theorem}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem*{lemma*}{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem*{proposition*}{Proposition}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{conjecture}[theorem]{Conjecture}

\theoremstyle{definition}
\newtheorem{maindefinition}[maintheorem]{Definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem*{definition*}{Definition}
\newtheorem{question}[theorem]{Question}
\newtheorem{example}[theorem]{Example}
\newtheorem*{example*}{Example}
\newtheorem{construction}[theorem]{Construction}
\newtheorem{problem}{Problem}
\newtheorem{exercise}{Problem}

\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\newtheorem*{remark*}{Remark}
\newtheorem{remarks}[theorem]{Remarks}
\newtheorem*{maintheorema}{Theorem \ref{thm:main}}

\newenvironment{solution}{\begin{proof}[Solution]}{\end{proof}}

\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Operators                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\F}{\mathbb{F}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\I}{\mathbb{I}}
\newcommand{\E}{\mathbb{E}}
\newcommand{\del}{\partial}
\newcommand{\Del}{\nabla}
\renewcommand{\P}{\mathbb{P}}
\newcommand{\fa}{\forall\,}
\newcommand{\ex}{\exists\,}
\newcommand{\st}{\text{ s.t. }}
\newcommand{\emp}{\varnothing}
\newcommand{\sm}{\setminus}
\newcommand{\limdiam}[1]{\lim_{#1}\text{diam }}
\newcommand{\indic}{\mathbbm{1}}
\newcommand{\nul}{\mathrm{null}}
\newcommand{\range}{\mathrm{range}}
\newcommand{\spa}{\mathrm{span}}
\newcommand{\tbf}[1]{\ifmmode\mathbf{#1}\else\textbf{#1}\fi}
\newcommand{\kb}[2]{\ket{#1}\!\bra{#2}}
\newcommand{\kbone}[1]{\ket{#1}\!\bra{#1}\!}
\newcommand{\argmax}{\arg\max}
\newcommand{\argmin}{\arg\min}
\newcommand{\Bias}{\text{Bias}}
\newcommand{\Var}{\text{Var}}
\newcommand{\Cov}{\text{Cov}}
\newcommand{\abs}[1]{\left|{#1}\right|}
\newcommand{\norm}[1]{\left\|{#1}\right\|}