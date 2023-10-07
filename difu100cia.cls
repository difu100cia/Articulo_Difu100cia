
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Wenneker Article
% Structure Specification File
% Version 1.0 (28/2/17)
%
% This file originates from:
% http://www.LaTeXTemplates.com
%
% Authors:
% Frits Wenneker
% Vel (vel@LaTeXTemplates.com)
%
% License:
% CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------
\LoadClass[twocolumn]{article} %clase para articulos
\usepackage[english,spanish,mexico]{babel}
\usepackage{authblk} %Mutiple autores
\usepackage{abstract}
\usepackage{microtype} % Better typography
\usepackage{url}
\usepackage{amsmath,amsfonts,amsthm} % Math packages for equations
\usepackage{multicol}
\usepackage[svgnames]{xcolor} % Enabling colors by their 'svgnames'
\usepackage[hang, small, labelfont=bf, up, textfont=it]{caption} % Custom captions under/above tables and figures
\usepackage{booktabs} % Horizontal rules in tables
\usepackage{lastpage} % Used to determine the number of pages in the document (for "Page X of Total")
\usepackage{graphicx} % Required for adding images
\usepackage{subcaption}
\usepackage[inline]{enumitem} % Required for customising lists
\setlist{noitemsep} % Remove spacing between bullet/numbered list elements
\usepackage{sectsty} % Enables custom section titles
\allsectionsfont{\usefont{OT1}{phv}{b}{n}} % Change the font of all section commands (Helvetica)
\graphicspath{{Figuras/}{Figures/}}
\usepackage{ragged2e}
\usepackage{listings}
\usepackage{array}
\usepackage{multirow}
\usepackage{threeparttable}
% \usepackage{algorithmic,algorithm} %Agrega algoritmos
% \floatname{algorithm}{Algoritmo} % Cambia el titulo


%----------------------------------------------------------------------------------------
%	DATOS DE PUBLICACION
%----------------------------------------------------------------------------------------

\newcommand{\publishrange}[1]{\gdef\@publishrange{#1}}
\newcommand{\volume}[1]{\gdef\@volume{#1}}
\newcommand{\num}[1]{\gdef\@num{#1}}
\newcommand{\received}[1]{\gdef\@received{#1}}
\newcommand{\reviewed}[1]{\gdef\@reviewed{#1}}
\newcommand{\accepted}[1]{\gdef\@accepted{#1}}
\newcommand{\published}[1]{\gdef\@published{#1}}

%----------------------------------------------------------------------------------------
%	MARGINS AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{geometry} % Required for adjusting page dimensions

 \geometry{
    letterpaper,
 	top=1cm, % Top margin
 	bottom=1.5cm, % Bottom margin
 	left=2cm, % Left margin
 	right=2cm, % Right margin
 	includehead, % Include space for a header
 	includefoot, % Include space for a footer
 	%showframe, % Uncomment to show how the type block is set on the page
 }

 \setlength{\columnsep}{6mm} % Column separation width

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage[T1]{fontenc} % Output font encoding for international characters
\usepackage[utf8]{inputenc} % Required for inputting international characters

\usepackage{XCharter} % Use the XCharter font

%----------------------------------------------------------------------------------------
%	HEADERS AND FOOTERS
%----------------------------------------------------------------------------------------

\usepackage{fancyhdr} % Needed to define custom headers/footers
\pagestyle{fancy} % Enables the custom headers/footers
\renewcommand{\headrulewidth}{0.4pt} % Linea delgada en cabecera
\renewcommand{\footrulewidth}{0.4pt} % Thin footer rule

\renewcommand{\sectionmark}[1]{\markboth{#1}{}} % Removes the section number from the header when \leftmark is used

%\nouppercase\leftmark % Add this to one of the lines below if you want a section title in the header/footer

% Headers
\lhead{\footnotesize \sffamily \textbf{\@title}}% Left header
\chead{} % Center header
\rhead{} % Right header

% Footers
\lfoot{\footnotesize \sffamily $\boldsymbol{\mathcal{DIFU}_{100}ci@}$ \textbf{Vol. \@volume, No. \@num, \@publishrange }} % Left footer
\cfoot{} % Center footer
\rfoot{\footnotesize \sffamily \textbf{ISSN:2007-3585}} % Right footer, "Page 1 of 2"

\fancypagestyle{firstpage}{ % Page style for the first page with the title
	\fancyhf{}
	\renewcommand{\headrulewidth}{0.0pt} % No header rule
	\renewcommand{\footrulewidth}{0.0pt} % Suppress footer rule
	\setlength{\headheight}{90pt}
	\setlength{\topmargin}{-60pt}
	\setlength{\headsep}{-15pt}
	\rhead{\includegraphics[width=.25\textwidth]{difu100cia.jpg}} % Right header
	\lhead{\footnotesize \sffamily $\boldsymbol{\mathcal{DIFU}_{100}ci@}$\\ Revista de Difusión Científica, Ingeniería y Tecnologías \\ Vol. \@volume, No. \@num,  \@publishrange \\ ISSN:2007-3585 \\ Artículo arbitrado \\ Publicado: \@published}% Left header
}

%----------------------------------------------------------------------------------------
%	CODE LISTING
%----------------------------------------------------------------------------------------

\lstset{
  basicstyle=\ttfamily,
  columns=fullflexible,
  breaklines=true,
  postbreak=\mbox{\textcolor{red}{$\hookrightarrow$}\space},
}

%----------------------------------------------------------------------------------------
%	ABSTRACT AND KEYWORDS MULTIPLE LANGUAGE
%----------------------------------------------------------------------------------------
% Keywords command
\providecommand{\keywordsname}{Keywords}
\addto\captionsenglish{\renewcommand{\keywordsname}{Keywords}}
\addto\captionsspanish{\renewcommand{\keywordsname}{Palabras clave}}
\newif\ifotherlanguage
% Abstract
\renewenvironment{abstract}[1][]
 {%
  \justifying
  \normalsize
  \begin{quotation}
  {\bfseries\centering\abstractname\par}
  \vspace{\dimexpr-\baselineskip+9pt}
  \medskip
 }
 {%
  \par
  \end{quotation}
 }
%Keywords
\providecommand{\keywords}{}
\renewcommand{\keywords}[2][]{%
  \par
  \if\relax\detokenize{#1}\relax\else\begin{otherlanguage}{#1}\fi
  \small
  \raggedright
  \textbf{\textit{\keywordsname---}} #2\par
  \if\relax\detokenize{#1}\relax\else\end{otherlanguage}\fi
}

%----------------------------------------------------------------------------------------
%	TITLE SECTION
%----------------------------------------------------------------------------------------
\newcommand{\subtitle}[1]{{\gdef\@subtitle{\Large #1}}}
\newcommand{\authorstyle}[1]{{\normalsize\usefont{OT1}{phv}{b}{n}\color{MidnightBlue}#1}} % Authors style (Helvetica)

\newcommand{\institution}[1]{{\footnotesize\usefont{OT1}{phv}{m}{sl}\color{Black}#1}} % Institutions style (Helvetica)

\newcommand{\HorRule}{\color{DarkGoldenrod}\rule{\linewidth}{1pt}} % Defines the gold horizontal rule around the title
\makeatletter  
\renewcommand*\maketitle{%
\renewcommand*{\thefootnote}{\fnsymbol{footnote}}
    \centering
    \begingroup
  	\vspace{25pt} % Move the entire title section up
  	\HorRule
  	\vspace{10pt} % Horizontal rule before the title
  	\fontsize{20}{20}
  	\usefont{OT1}{phv}{b}{n}
  	\selectfont % Helvetica
  	\color{MidnightBlue} % Text colour for the title and author(s)
     \@title    
    \par
    \vspace{15pt}     
    \@subtitle
    \par
    \vspace{15pt} 
    \normalsize
    \@author
    \vspace{4pt} % Space before the rule
  	\par
  	\HorRule % Horizontal rule after the title
  	\vspace{-5pt}
   \endgroup 
\@thanks
\global\let\@thanks\relax
\global\let\@thanks\@empty
}
\makeatother

\date{}

%----------------------------------------------------------------------------------------
%	SECCION CORREOS
%----------------------------------------------------------------------------------------
\renewcommand{\thefootnote}{\alph{footnote}}
%----------------------------------------------------------------------------------------
%	TAMANO DE SECCION Y SUBSECCION
%----------------------------------------------------------------------------------------

\sectionfont{\fontsize{11}{10}\selectfont}
\subsectionfont{\fontsize{10}{10}\selectfont}

%----------------------------------------------------------------------------------------
%	NUMERALES DE SECCION
%----------------------------------------------------------------------------------------

\renewcommand{\thesection}{\Roman{section}} 

%----------------------------------------------------------------------------------------
%	SECCION
%----------------------------------------------------------------------------------------

\usepackage{lettrine} % Package to accentuate the first letter of the text (lettrine)
\usepackage{fix-cm}	% Fixes the height of the lettrine

\newcommand{\initial}[1]{ % Defines the command and style for the lettrine
	\lettrine[lines=3,findent=4pt,nindent=0pt]{% Lettrine takes up 3 lines, the text to the right of it is indented 4pt and further indenting of lines 2+ is stopped
		\color{MidnightBlue}% Lettrine colour
		{#1}% The letter
	}{}%
}

\usepackage{xstring} % Required for string manipulation

\newcommand{\lettrinesection}[1]{
	\StrLeft{#1}{1}[\firstletter] % Capture the first letter of the abstract for the lettrine
	\initial{\firstletter}\StrGobbleLeft{#1}{1} % Print the abstract with the first letter as a lettrine
}

%----------------------------------------------------------------------------------------
%	BIBLIOGRAPHY
%----------------------------------------------------------------------------------------

%\usepackage[backend=bibtex,style=verbose-trad2]{biblatex}
%\bibliography{referencias} 

\usepackage[sorting=none]{biblatex}
\usepackage{csquotes}

\addbibresource{referencias.bib}

%\usepackage[autostyle=true]{csquotes} % Required to generate language-dependent quotes in the bibliography