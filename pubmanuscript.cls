%
% PubManuscript document class
%
%
% Author: Jan Niklas Schmäke [jan.schmaeke@hs-duesseldorf.de]
%


% GENERAL - - - - - - - - - - - - - - - - - - - - - - - - -
% LaTeX format
\NeedsTeXFormat{LaTeX2e}

% Class definition
\ProvidesClass{pubmanuscript}[Extension of the articel document class for a publication manuscript]

% Base class
\LoadClass[a4paper, oneside, 12pt]{article}


% PACKAGES - - - - - - - - - - - - - - - - - - - - - - - - -

% Page geometry
\RequirePackage[inner    = 1.875cm,
                outer    = 1.875cm,
								top      = 2.50cm,
								bottom   = 4.00cm,
								footskip = 2.0cm]{geometry}

% Document fonts
\RequirePackage{paratype}
\RequirePackage{CharisSIL}
\RequirePackage{cascadia-code}
\RequirePackage[notext]{stix}
\RequirePackage[T1]{fontenc}

% Math symbols and formatting
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{xfrac}

% Formatting
\RequirePackage{fancyhdr}
\RequirePackage[parfill]{parskip}
\RequirePackage{caption}
\RequirePackage[explicit]{titlesec}
\RequirePackage{xcolor}
\RequirePackage{setspace}
\RequirePackage{microtype}
\RequirePackage[most]{tcolorbox}
\RequirePackage{listings}
\RequirePackage{scalerel}
\RequirePackage{titling}
\RequirePackage{authoraftertitle}
\RequirePackage{authblk}
\usepackage[square, comma, nonamebreak, compress, numbers]{natbib}

% Tables
\RequirePackage{booktabs}
\RequirePackage{colortbl}

% Graphics
\RequirePackage{tikz}
\RequirePackage{tikz-3dplot}
\RequirePackage{pgfplots}
\pgfplotsset{compat = newest}
\RequirePackage{subcaption}

% TikZ libraries
\usetikzlibrary{arrows.meta}
\usetikzlibrary{calc}
\usetikzlibrary{spy}
\usetikzlibrary{shadings}
\usetikzlibrary{patterns}
\usetikzlibrary{perspective}
\usetikzlibrary{external}
\usetikzlibrary{decorations}
\usetikzlibrary{decorations.markings}

% Links
\RequirePackage{hyperref}
\RequirePackage[noabbrev,nameinlink]{cleveref}

% Misc.
\RequirePackage{afterpage}
\RequirePackage{fontawesome5}
\RequirePackage{fmtcount}


% COLORS - - - - - - - - - - - - - - - - - - - - - - - - - -

% From velura.nvim - https://github.com/schmaeke/velura.nvim
\definecolor{red0}{HTML}{7F172B}
\definecolor{red1}{HTML}{A11E35}
\definecolor{red2}{HTML}{C5233F}
\definecolor{red3}{HTML}{DC2C48}
\definecolor{red4}{HTML}{E94C66}
\definecolor{red5}{HTML}{EE738D}
\definecolor{red6}{HTML}{F4A1AB}
\colorlet{red}{red1}

\definecolor{yellow0}{HTML}{8F7422}
\definecolor{yellow1}{HTML}{B3962B}
\definecolor{yellow2}{HTML}{E2BB36}
\definecolor{yellow3}{HTML}{E9C946}
\definecolor{yellow4}{HTML}{F3D870}
\definecolor{yellow5}{HTML}{F5DF8E}
\definecolor{yellow6}{HTML}{F8E1A8}
\colorlet{yellow}{yellow1}

\definecolor{green0}{HTML}{1A6C2E}
\definecolor{green1}{HTML}{22863A}
\definecolor{green2}{HTML}{29A245}
\definecolor{green3}{HTML}{33B34E}
\definecolor{green4}{HTML}{42CC60}
\definecolor{green5}{HTML}{75D28D}
\definecolor{green6}{HTML}{A8D8B0}
\colorlet{green}{green1}

\definecolor{cyan0}{HTML}{356A63}
\definecolor{cyan1}{HTML}{478B80}
\definecolor{cyan2}{HTML}{58AA9A}
\definecolor{cyan3}{HTML}{66B8A7}
\definecolor{cyan4}{HTML}{80C9BC}
\definecolor{cyan5}{HTML}{99D5CE}
\definecolor{cyan6}{HTML}{B3E3E0}
\colorlet{cyan}{cyan1}

\definecolor{blue0}{HTML}{1A5A91}
\definecolor{blue1}{HTML}{2272B3}
\definecolor{blue2}{HTML}{2A8AD9}
\definecolor{blue3}{HTML}{3C9BE1}
\definecolor{blue4}{HTML}{5FB2F0}
\definecolor{blue5}{HTML}{84C0F2}
\definecolor{blue6}{HTML}{A8D1F4}
\colorlet{blue}{blue1}

\definecolor{purple0}{HTML}{641F8A}
\definecolor{purple1}{HTML}{812FB4}
\definecolor{purple2}{HTML}{9D3BD6}
\definecolor{purple3}{HTML}{A948E0}
\definecolor{purple4}{HTML}{BB6EF1}
\definecolor{purple5}{HTML}{D098F5}
\definecolor{purple6}{HTML}{E0B3E8}
\colorlet{purple}{purple1}

% PGFPLOTS color lists
\pgfplotscreateplotcyclelist{veluraColorList}{
	red \\
	yellow \\
	green \\
	cyan \\
	blue \\
	purple \\
%
	red, densely dashed \\
	yellow, densely dashed \\
	green, densely dashed \\
	cyan, densely dashed \\
	blue, densely dashed \\
	purple, densely dashed \\
%
	red,    densely dotted \\
	yellow,  densely dotted \\
	green,   densely dotted \\
	cyan, densely dotted \\
	blue, densely dotted \\
	purple, densely dotted \\
%
	red,    densely dash dot \\
	yellow,  densely dash dot \\
	green,   densely dash dot \\
	cyan, densely dash dot \\
	blue, densely dash dot \\
	purple, densely dash dot \\
}

\pgfplotscreateplotcyclelist{veluraColorListMark}{
	red,    mark = square*,   mark size = 1.0pt, mark options = {fill = red!50!white, solid} \\
	yellow,  mark = *,         mark size = 1.0pt, mark options = {fill = yellow!50!white, solid} \\
	green,   mark = triangle*, mark size = 1.0pt, mark options = {fill = green!50!white, solid} \\
	cyan, mark = diamond*,  mark size = 1.0pt, mark options = {fill = cyan!50!white, solid} \\
	blue, mark = pentagon*, mark size = 1.0pt, mark options = {fill = blue!50!white, solid} \\
	purple, mark = oplus*, mark size = 1.0pt, mark options = {fill = purple!50!white, solid} \\
%
	red,    mark = square*,   mark size = 1.0pt, mark options = {fill = red!50!white, solid}, densely dashed \\
	yellow,  mark = *,         mark size = 1.0pt, mark options = {fill = yellow!50!white, solid}, densely dashed \\
	green,   mark = triangle*, mark size = 1.0pt, mark options = {fill = green!50!white, solid}, densely dashed \\
	cyan, mark = diamond*,  mark size = 1.0pt, mark options = {fill = cyan!50!white, solid}, densely dashed \\
	blue, mark = pentagon*, mark size = 1.0pt, mark options = {fill = blue!50!white, solid}, densely dashed \\
	purple, mark = oplus*, mark size = 1.0pt, mark options = {fill = purple!50!white, solid}, densely dashed \\
%
	red,    mark = square*,   mark size = 1.0pt, mark options = {fill = red!50!white, solid}, densely dotted \\
	yellow,  mark = *,         mark size = 1.0pt, mark options = {fill = yellow!50!white, solid}, densely dotted \\
	green,   mark = triangle*, mark size = 1.0pt, mark options = {fill = green!50!white, solid}, densely dotted \\
	cyan, mark = diamond*,  mark size = 1.0pt, mark options = {fill = cyan!50!white, solid}, densely dotted \\
	blue, mark = pentagon*, mark size = 1.0pt, mark options = {fill = blue!50!white, solid}, densely dotted \\
	purple, mark = oplus*, mark size = 1.0pt, mark options = {fill = purple!50!white, solid}, densely dotted \\
%
	red,    mark = square*,   mark size = 1.0pt, mark options = {fill = red!50!white, solid}, densely dash dot \\
	yellow,  mark = *,         mark size = 1.0pt, mark options = {fill = yellow!50!white, solid}, densely dash dot \\
	green,   mark = triangle*, mark size = 1.0pt, mark options = {fill = green!50!white, solid}, densely dash dot \\
	cyan, mark = diamond*,  mark size = 1.0pt, mark options = {fill = cyan!50!white, solid}, densely dash dot \\
	blue, mark = pentagon*, mark size = 1.0pt, mark options = {fill = blue!50!white, solid}, densely dash dot \\
	purple, mark = oplus*, mark size = 1.0pt, mark options = {fill = purple!50!white, solid}, densely dash dot \\
}

% colormap for surface plots
\pgfplotsset{
	colormap={drainbow}{%
		rgb255 = (  0,   0,  92)
		rgb255 = (  0, 255, 255)
		rgb255 = (  0, 128,   0)
		rgb255 = (255, 255,   0)
		rgb255 = (255,  97,   0)
		rgb255 = (107,   0,   0)
	},
}


% HYPERREF SETUP - - - - - - - - - - - - - - - - - - - - - -
\hypersetup{
	colorlinks = true,
	linkcolor = blue0,
	citecolor = red0,
	urlcolor = purple0,
	filecolor = green0
}


% CUSTOM COMMANDS - - - - - - - - - - - - - - - - - - - - -

% create colored todo
\newcommand{\todo}[1]{
	{\color{red}\itshape #1}
}

\newcommand{\linktt}[1]{
	\href{#1}{\texttt{#1}}
}

\newcommand{\maillink}[1]{
	\href{mailto:#1}{\texttt{#1}}
}

% shortcut for boldsymbol
\def\bs{\boldsymbol}

\newcommand{\intd}[1]{\ensuremath{\,\mathrm{d}#1}}

% shortcut for assembly operator
\DeclareMathOperator*{\Assembly}{\scalerel*{\mathsf{A}}{\sum}}

% HEADER & FOOTER - - - - - - - - - - - - - - - - - - - - -

\setlength{\headheight}{14.5pt}

\renewcommand{\headrulewidth}{0.15mm}
\renewcommand{\footrulewidth}{0.0mm}

\fancyhead[L]{\sffamily\nouppercase\leftmark}
\fancyhead[R]{\sffamily\thepage}
\fancyhead[C]{}

\fancyfoot[L, C, R]{}

\fancypagestyle{plain}
{
	\renewcommand{\headrulewidth}{0.0mm}
	\fancyhead[L, C, R]{}
	\fancyfoot[L, C, R]{}
}


% HEADING - - - - - - - - - - - - - - - - - - - - - - - - -
\setcounter{secnumdepth}{3} % number until subsubsection

\titleformat{name = \section, numberless}[display]
{}
{}
{0.0cm}
{\sffamily\Large\bfseries#1}
[]

\titleformat{name = \section}[display]
{}
{}
{0.0cm}
{\sffamily\Large\thesection\ ---\ \bfseries#1}
[]

\titlespacing{\section}{0cm}{0.0cm}{0.25cm}


\titleformat{name = \subsection, numberless}[display]
{}
{}
{0.0cm}
{\sffamily\large\bfseries#1}
[]

\titleformat{name = \subsection}[display]
{}
{}
{0.0cm}
{\sffamily\large\thesubsection\ ---\ \bfseries#1}
[]

\titlespacing{\subsection}{0cm}{0.0cm}{0.25cm}


\titleformat{name = \subsubsection, numberless}[display]
{}
{}
{0.0cm}
{\sffamily\itshape#1}
[]

\titleformat{name = \subsubsection}[display]
{}
{}
{0.0cm}
{\sffamily\thesubsubsection\itshape\ ---\ #1}
[]

\titlespacing{\subsubsection}{0cm}{0.0cm}{0.15cm}

% TITLE PAGE - - - - - - - - - - - - - - - - - - - - - - - -
\pretitle{\thispagestyle{plain}\vspace*{-1cm}\begin{center}\LARGE\bfseries\sffamily}
\posttitle{\end{center}}

\renewcommand\Authands{ and }
\def\sep{\ $\cdot$\ }

\newcommand{\abstractAndKeywords}[2]{
	\vskip 2mm
	\hrule
	\vskip 2mm
	{\sffamily\textbf{Abstract}\ ---}#1 \\
	{\flushleft{\sffamily\textbf{Keywords}\ ---}#2} \\
	\vskip 0mm
	\hrule
}

% CAPTIONS - - - - - - - - - - - - - - - - - - - - - - - - -
\captionsetup{
	labelfont = {sf, bf, small},
  font = {small},
  format = hang,
  justification = justified
}


% LISTINGS - - - - - - - - - - - - - - - - - - - - - - - - -
\renewcommand{\lstlistingname}{Algorithm}
\crefname{listing}{algorithm}{algorithms}
\Crefname{listing}{Algorithm}{Algorithms}

%%
%% Julia definition (c) 2014 Jubobs
%%
\lstdefinelanguage{Julia}%
  {morekeywords={abstract,break,case,catch,const,continue,do,else,elseif,%
      end,export,false,for,function,immutable,import,importall,if,in,%
      macro,module,otherwise,quote,return,switch,true,try,type,typealias,%
      using,while},%
   sensitive=true,%
   alsoother={$},%
   morecomment=[l]\#,%
   morecomment=[n]{\#=}{=\#},%
   morestring=[s]{"}{"},%
   morestring=[m]{'}{'},%
}[keywords,comments,strings]%

\lstset
{
	frame = single,
	framerule = 0.25mm,
	rulecolor = \color{black!30!white},
	belowcaptionskip = 2mm,
	aboveskip = 1em,
	belowskip = 1em,
	showstringspaces = false,
	columns = fixed,
	basicstyle = {\linespread{1.1}\footnotesize\ttfamily},
	numbers = left,
	numbersep = 2mm,
	numberstyle = {\color{gray}\ttfamily\scriptsize},
	xleftmargin = 1.8em,
	keywordstyle = {\color{purple0}},
	commentstyle = {\color{gray}\slshape},
	stringstyle = {\color{green0}},
	breaklines = true,
	breakatwhitespace	= true,
	tabsize = 2,
	backgroundcolor = \color{black!2!white},
	mathescape = true,
	captionpos = b,
	emph = {continue,and},
	emphstyle = {\color{blue}},
	escapechar = ?,
	language = Julia,
}

\newcommand{\indRule}{\color{lightgray}\vrule}


% OTHER SETTINGS - - - - - - - - - - - - - - - - - - - - - -
\tikzset{external/only named = true}
\bibliographystyle{ieeetr}
\pagestyle{fancy}
\setstretch{1.3}
