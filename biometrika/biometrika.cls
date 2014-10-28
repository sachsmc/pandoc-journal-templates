%%
%% This is file `biometrika.cls'
%%
%% The Oxford University Press
%% Copyright (2007) The Oxford University Press
%% 
%% Prepared by: Aptara
%%
%% Created on: 22nd, Aug. 2007
%% 
%% Change History
%%  v. 1.1 - 13/02/2008 
%%         - Insert linenumber
%%
%%  v. 1.2 - 25/06/2008 
%%         - New Environment corollary, proposition, definition, assumption, and remark
%%         - Theorem number change from arabic to roman 
%%         - 1 pica space between email-address 
%% 
%%  v. 1.3 - 26/06/2008 
%%         - Theorem number change from roman to arabic
%% 
%%  v. 1.4 - 10/10/2008 
%%         - Figurebox macro changes for resizing graphics.
%%
%%  v. 1.5 - 25/05/2009 
%%         - New Environments Step, Property and Restriction
%%         - Updation in the style of Assumption and Remark  
%% 
%% This file may only be used in the preparation of papers
%% to be published by The Oxford University Press
%% Any other use constitutes an infringement of copyright.
%% 
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{biometrika}[2009/25/05 v1.5 Standard LaTeX document class]
%
\newif\ifkeyedin\keyedinfalse
\newif\ifdraft
\newif\ifcontact
\newif\ifprinter
\newdimen\draftrule
\newdimen\trimrule
\draftrule0pt
\trimrule.1pt
\newif\ifquery
\newif\ifnoquery\noqueryfalse
\newif\ifCUPmtlplainloaded
\newif\ifreview\reviewfalse
\newif\iflineno
\newif\ifletter
\newif\ifmiscellena\miscellenafalse
\newif\ifinbrief
%
\DeclareOption{manuscript}{\renewcommand{\baselinestretch}{2}}
\DeclareOption{article}{\miscellenatrue}
\DeclareOption{review}{\reviewtrue}
\DeclareOption{in-brief}{\inbrieftrue}
%
\@twosidetrue\@mparswitchtrue
%
\DeclareOption{letter}{\lettertrue}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{lineno}{\linenotrue}
\DeclareOption{query}{\querytrue}
\DeclareOption{keyedin}{\keyedintrue}
\DeclareOption{noquery}{\noquerytrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}\draftrule.25pt\drafttrue}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{contact}{\setlength\overfullrule{0pt}\contacttrue}
\DeclareOption{printer}{\setlength\overfullrule{0pt}\trimrule0pt\printertrue}
\ExecuteOptions{final}
\ProcessOptions
%

\iflineno
\RequirePackage{Biomet-lineno}
\fi

\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Fig.}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
%
\newcommand\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
%
\newcount\minute
\newcount\hour
\def\currenttime{%
     \minute\time
     \hour\minute
     \divide\hour60
     \the\hour:\multiply\hour60\advance\minute-\hour\the\minute}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Boxes & Dimensions %%%%%%%%%%%%%%%%%%%%%
%
\def\jobtag{biometrika.cls}
%
\newdimen\trimwidth
\newdimen\trimheight
\newdimen\typewidth
\newdimen\typeheight
%
\newdimen\tempdimen
\newdimen\normaltextheight
\newskip\normalbaselineskip
\newdimen\blindfoliodrop
%
\newdimen\enumdim
\newdimen\figheight
\newdimen\figwidth
\newdimen\tabledim
\newskip\tableleftskip
\newskip\tablerightskip
%
\newdimen\mathindent
\newdimen\emathindent
\newdimen\bibindent
%
\newbox\tempbox
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Boxes & Dimensions %%%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Fonts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%% headings
\def\foliofont{}
\def\dropfoliofont{}
%% chapter
\def\sptitlefont{\fontsize{22}{24}\selectfont\bfseries\mathversion{bold}}
\def\titlefont{\fontsize{16}{18}\selectfont\bfseries\mathversion{bold}\centering}
\def\subtitlefont{\fontsize{10}{12}\selectfont\bfseries\centering}
\def\affilfont{\fontsize{11}{13}\selectfont\ifreview\else\itshape\fi\centering}
\def\authorfont{\fontsize{11}{13}\selectfont\centering\scshape}
\def\slugfont{\fontsize{8}{10}\selectfont}
\def\rhfont{\fontsize{11}{13}\selectfont}
\def\absheadfont{\centering\scshape}
\def\keywordfont{\fontsize{9}{10}\selectfont}
%% section
\ifmiscellena
   \def\sectionfont{\fontsize{10}{12}\centering\scshape}
\else
   \def\sectionfont{\fontsize{11}{13}\centering\scshape}
\fi
\def\subsectionfont{\itshape\centering}
%\def\subsubsectionfont{\itshape}
%\def\paragraphfont{}%
%\def\subparagraphfont{}%
%\def\subsubparagraphfont{}%
%% figure
\def\figcaptionfont{\reset@font\fontsize{9}{10}\selectfont}
\def\figcaptionnumfont{\fontsize{9}{10}\selectfont}
%% table
\def\tablefont{\fontsize{9}{11}\selectfont}%
\def\tablecaptionfont{\reset@font\fontsize{11}{13}\selectfont\itshape\leftskip\tableleftskip\rightskip\tablerightskip}% 
\def\tablecaptionnumfont{\reset@font\fontsize{11}{13}\selectfont}
\def\TCHfont{\fontsize{9}{11}\selectfont}%
\def\TSCHfont{\fontsize{9}{11}\selectfont}%
\def\tabnotefont{\reset@font\fontsize{9}{11}\selectfont\leftskip\tabledim\rightskip\tabledim}%
%% BM
\def\indexfont{\footnotesize\raggedright}
\def\bibliofont{\fontsize{9}{10}\selectfont}
%
\def\listfont{}
\def\listdevicefont{}
\def\extractfont{\fontsize{10}{12}\selectfont\leftskip20\p@\rightskip\leftskip}
\def\appendixfont{\fontsize{10}{12}\selectfont}
%
%%%%%%%%%%%%%%%%%%%%%%%%% Fonts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\@xvpt{15}
\def\@xviiipt{18}
\def\@xxivpt{24}
%
\normalbaselineskip12pt
%
\ifmiscellena
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt{12}
   \abovedisplayskip 6.5\p@ \@plus2\p@ \@minus.5\p@
   \abovedisplayshortskip \abovedisplayskip
   \belowdisplayshortskip \abovedisplayskip
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\else
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xipt{13}
   \abovedisplayskip 6.5\p@ \@plus2\p@ \@minus.5\p@
   \abovedisplayshortskip \abovedisplayskip
   \belowdisplayshortskip \abovedisplayskip
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\fi
\def\biggg#1{{\hbox{$\left#1\vbox to20.5\p@{}\right.\n@space$}}}
\def\Biggg#1{{\hbox{$\left#1\vbox to23.5\p@{}\right.\n@space$}}}
\normalsize
%
\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
   \setSmallDelims}
%
\def\setSmallDelims{%
\def\big##1{{\hbox{$\left##1\vbox to7.5\p@{}\right.\n@space$}}}%
\def\Big##1{{\hbox{$\left##1\vbox to10.5\p@{}\right.\n@space$}}}%
\def\bigg##1{{\hbox{$\left##1\vbox to13.5\p@{}\right.\n@space$}}}%
\def\Bigg##1{{\hbox{$\left##1\vbox to16.5\p@{}\right.\n@space$}}}%
\def\biggg##1{{\hbox{$\left##1\vbox to19.5\p@{}\right.\n@space$}}}%
\def\Biggg##1{{\hbox{$\left##1\vbox to22.5\p@{}\right.\n@space$}}}%
}
%
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{10}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
   \setFootnotesizeDelims}
%
\def\setFootnotesizeDelims{%
\def\big##1{{\hbox{$\left##1\vbox to6.5\p@{}\right.\n@space$}}}%
\def\Big##1{{\hbox{$\left##1\vbox to9.5\p@{}\right.\n@space$}}}%
\def\bigg##1{{\hbox{$\left##1\vbox to12.5\p@{}\right.\n@space$}}}%
\def\Bigg##1{{\hbox{$\left##1\vbox to15.5\p@{}\right.\n@space$}}}%
\def\biggg##1{{\hbox{$\left##1\vbox to18.5\p@{}\right.\n@space$}}}%
\def\Biggg##1{{\hbox{$\left##1\vbox to21.5\p@{}\right.\n@space$}}}%
}
%   
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
%%
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareOldFontCommand{\bi}{\bfseries\itshape}{\bfseries\itshape}
%
\newcommand{\cal}{\protect\pcal}
\newcommand{\pcal}{\@fontswitch{\relax}{\mathcal}}
\newcommand{\mit}{\protect\pmit}
\newcommand{\pmit}{\@fontswitch{\relax}{\mathnormal}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\setlength\trimheight{270mm}
\setlength\trimwidth{192mm}
%
\setlength\typeheight{53.7pc}
\setlength\typewidth{35pc}
%
\setlength\textheight{52.1pc}%
\addtolength\textheight{-6.2pt}%
\setlength\normaltextheight{\textheight}
\setlength\textwidth{35pc}
%
\setlength\topmargin{42pt}
\setlength\oddsidemargin   {6pc}
\setlength\evensidemargin\trimwidth
\addtolength\evensidemargin{-\textwidth}
\addtolength\evensidemargin{-\oddsidemargin}
%
\setlength\headheight{6.4\p@}% 
\setlength\headsep   {12.7\p@}% \typeheight - \textheight - \headheight
\setlength\topskip   {7.2\p@}
%
\setlength\footskip{32\p@}
\setlength\maxdepth{4\p@}
%
\blindfoliodrop\trimheight
\advance\blindfoliodrop-\typeheight
\advance\blindfoliodrop-\topmargin
\advance\blindfoliodrop-\footskip
\advance\blindfoliodrop18pt
%
\ifmiscellena
   \setlength\parindent{10\p@}%
\else
   \setlength\parindent{11\p@}%
\fi
%
\setlength\marginparwidth {.075in}
\setlength\marginparsep{0\p@}
\setlength\marginparpush{5\p@}
%
\setlength\footnotesep{6.65\p@}
\setlength{\skip\footins}{11\p@ \@plus 8\p@ \@minus 8\p@}% change + based on FN font height
\skip\@mpfootins = \skip\footins
%
\setlength\floatsep    {13\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@}
\setlength\@fpsep{8\p@ \@plus 1fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@}
\setlength\@dblfpsep{8\p@ \@plus 1fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
%
\setlength\partopsep{0pt}
\setlength\lineskip{1\p@}% check if it can be flexible
\setlength\normallineskip{1\p@}%
%%\renewcommand\baselinestretch{}
\setlength\parskip{\z@}%{0\p@ \@plus \p@}
\sloppy
\clubpenalty10000
\widowpenalty10000%
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
%
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Parameters %%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\spreadoutfactor{1}
%
\def\spreadout#1{%
  \gdef\temp{#1}\dimen0 = \spreadoutfactor pt
  \expandafter\dospreadout\temp\endmark\kern-\dimen0}
%
\def\dospreadout{%
  \afterassignment\findospreadout
  \let\next= }
%
\def\findospreadout{%
   \ifx\next\endmark
      \let\nextaction = \relax
   \else
      \let\nextaction = \dospreadout
      \next
      \kern\dimen0
   \fi
   \nextaction}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Article Title  %%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
%
\def\sptitle#1{\gdef\@sptitle{#1}}\sptitle{}
\def\title#1{\gdef\@title{\let\thanks\newthanks\let\footnote\newthanks#1}}
\def\subtitle#1{\gdef\@subtitle{#1}}\subtitle{}

\newcount\aucount
\newcount\affcount

\def\author#1{\global\advance\aucount\@ne%
  \expandafter\gdef\csname author\romannumeral\the\aucount\endcsname{#1}
}
  
\def\affil#1{\global\advance\affcount\@ne%
  \expandafter\gdef\csname affil\romannumeral\the\affcount\endcsname{#1}
}

\def\@printauthors{%
  \@tempcnta\aucount
  \@tempcntb\z@
  \ifnum\@tempcnta>\z@
  \loop
  \ifnum\@tempcnta>\z@
     \advance\@tempcntb\@ne
     {\authorfont\ifnum\@tempcntb=\@ne{\scshape By}\ \fi%
      \expandafter\csname author\romannumeral\the\@tempcntb\endcsname\par\vskip3pt}%
     {\affilfont\expandafter\csname affil\romannumeral\the\@tempcntb\endcsname\par\vskip13pt}%
     \global\firstmailtrue%
     \advance\@tempcnta\m@ne
  \repeat
  \fi
}
%%
\newif\iffirstmail\global\firstmailtrue
%\def\email#1{\par\vskip2pt{\affilfont\em#1}}%
\def\email#1{\iffirstmail\par\vskip2pt\else\hspace*{1pc}\fi{\affilfont\em#1}\global\firstmailfalse}%
\def\etal{{\scshape et al.}}
\def\and{{\scshape and}\ }
\def\datecheck#1 #2@{#1 $#2$}
\def\revised#1{\gdef\@revised{\expandafter\datecheck#1@}}\def\@revised{}
\def\received#1{\gdef\@received{\expandafter\datecheck#1@}}\def\@received{}
\def\accepted#1{\gdef\@accepted{\expandafter\datecheck#1@}}
%
\newcount\articlecount
\newcommand\maketitle{\par
  \begingroup
    \if@twocolumn
        \twocolumn[\@maketitle]
    \else
        \@maketitle
    \fi
    \ifnum\articlecount=1\thispagestyle{plain}\else\fi%
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \long\def\@makefntext##1{\noindent%
            {\@textsuperscript{\normalfont\@footnotemark}}##1}%
    \long\def\@makefntext##1{\noindent##1}%
    \@thanks
  \endgroup
  \let\oldfootnote\footnote
  \setcounter{footnote}{0}%
    \let\@maketitle\relax
    \global\let\maketitle\relax
  \global\let\thanks\relax
  \global\let\@thanks\@empty
  \gdef\@author{}\gdef\@title{}\gdef\@sptitle{}%
  \renewcommand\thefootnote{\arabic{footnote}}%
   \@afterheading
%  \@afterindenttrue
}
%
\def\@articleref{}
\def\articleref#1{\gdef\@articleref{\vspace*{-12pt}\centerline{{\itshape \@jname} #1}\vspace*{10pt}}}
%
\def\@maketitle{%
  \clearpage%
  \thispagestyle{plain}%
  \null
  \bgroup
%\iflineno%
%\internallinenumbers%
%\advance\linenumbersep by .001\textwidth%
%\fi%
  \parindent0\p@
    \vskip33.7\p@%
    \ifx\@sptitle\empty\vskip-9\p@\else\noindent{\sptitlefont\@sptitle\par}\fi
    {\titlefont{\@title\vphantom{pg}}\vskip13\p@\par}%
    {\ifx\@subtitle\@empty\else\vskip2\p@{\subtitlefont\@subtitle\par}\vskip2\p@\fi}% 4.5\p@
    \@printauthors
    \ifreview\@articleref\fi%
%  \iflineno\global\lncount\thelinenumber\fi%
  \egroup
%  \iflineno\addtocounter{linenumber}{\lncount}\fi
  }
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Article Title  %%%%%%%%%%%%%%%%%%%%%
%
\def\abshead#1{{\absheadfont#1\par}}
\newenvironment{abstract}{%
%  \leftskip2pc%
  \par\@ifundefined{xmlfile}{}{\addvspace{-3\p@}}%\noindent\ignorespaces%
{\absheadfont\ignorespaces Summary\par\vskip3pt}
}{\par\addvspace{12.3\p@}}
%
\newenvironment{keywords}{\par\addvspace{8pt}%
                          \keywordfont\noindent{\itshape Some key words}:\ \ignorespaces%
                         }{\par\addvspace{23pt}}
%
\newbox\abbrebox
\newenvironment{abbre}{\par\addvspace{14pt}%
                       \noindent{\bi Abbre{v}iations:}\ \ignorespaces%
                       }{\par}
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Sectioning commands  %%%%%%%%%%%%%%%%%%%%
%
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
%\newcounter {subsubsection}[subsection]
%\newcounter {paragraph}[subsubsection]
%\newcounter {subparagraph}[paragraph]
\renewcommand\thepart          {\Roman{part}}
\renewcommand\thechapter       {\arabic{chapter}}
\renewcommand\thesection       {\arabic{section}}
\renewcommand\thesubsection    {\thesection$\cdot$\arabic{subsection}}
%\renewcommand\thesubsubsection {\thesubsection .\arabic{subsubsection}}
%\renewcommand\theparagraph     {\thesubsubsection.\arabic{paragraph}}
%\renewcommand\thesubparagraph  {\theparagraph.\arabic{subparagraph}}
%
\def\@seccntformat#1{{\rm \csname the#1\endcsname}.\hskip 1em}
%
\ifmiscellena
\newcommand\section{\@startsection {section}{1}{\z@}{-23.2pt \@plus -2pt \@minus -2pt}{4pt}{\sectionfont}}%
\newcommand\subsection{\@startsection{subsection}{2}{\z@}{-9.7pt \@plus -2pt \@minus -2pt}{3pt}{\subsectionfont}}%
%\newcommand\subsubsection{\@startsection{subsubsection}{3}{\parindent}{-12pt \@plus -2pt \@minus -.2pt}{-1em}{\subsubsectionfont}}%
\else
\newcommand\section{\@startsection {section}{1}{\z@}{-23.2pt \@plus -2pt \@minus -2pt}{3pt}{\sectionfont}}%
\newcommand\subsection{\@startsection{subsection}{2}{\z@}{-9.7pt \@plus -2pt \@minus -2pt}{2pt}{\subsectionfont}}%
%\newcommand\subsubsection{\@startsection{subsubsection}{3}{\parindent}{-12pt \@plus -2pt \@minus -.2pt}{-1em}{\subsubsectionfont}}%
\fi
%\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}{-19pt \@plus -2pt \@minus -.2pt}{-1em}{\paragraphfont}}%
%\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}{-19pt \@plus -2pt \@minus -.2pt}{-1em}{\subparagraphfont}}%
%\newcommand\subsubparagraph{\@startsection{subsubparagraph}{6}{\parindent}{-19pt \@plus -2pt \@minus -.2pt}{-1em}{\subsubparagraphfont}}%
%
% \@sect{1}   {2}    {3}     {4}         {5}        {6}    [7]   {8}
% \@sect{NAME}{LEVEL}{INDENT}{BEFORESKIP}{AFTERSKIP}{STYLE}[ARG1]{ARG2}
%
\def\@sect#1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth
     \let\@svsec\@empty\else
     \refstepcounter{#1}%
     \let\@@protect\protect
     \def\protect{\noexpand\protect\noexpand}%
     \edef\@svsec{\@seccntformat{#1}}%
     \let\protect\@@protect\fi
     \@tempskipa #5\relax
      \ifdim \@tempskipa>\z@
        \begingroup #6\relax
          \@hangfrom{\hskip #3\relax\@svsec}%
                    {\interlinepenalty \@M #8\par}%
        \endgroup
       \csname #1mark\endcsname{#7}\addcontentsline
         {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                      \protect\numberline{\csname the#1\endcsname}\fi
                    #7}\else
        \def\@svsechd{#6\hskip #3\relax  %% Use a period(any punc) here for run-in head
                   \@svsec #8 \csname #1mark\endcsname
                      {#7}\addcontentsline
                           {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                           \protect\numberline{\csname the#1\endcsname}%
                                     \fi
                       #7}}\fi
     \@xsect{#5}}
%
\def\@startsection#1#2#3#4#5#6{%
  \if@noskipsec \leavevmode \fi
  \par
  \@tempskipa #4\relax
%  \@afterindenttrue
  \ifdim \@tempskipa <\z@
    \@tempskipa -\@tempskipa %\@afterindentfalse
  \fi
  \if@nobreak
    \everypar{}
  \else
    \addpenalty\@secpenalty\addvspace\@tempskipa
  \fi
  \@ifstar
    {\@ssect{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}
%  \@ssect{INDENT}{BEFORESKIP}{AFTERSKIP}{STYLE}{ARG}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Sectioning commands  %%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Lists %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newskip\topsepi \topsepi6\p@ \@plus2\p@% \@minus.5\p@
\newskip\topsepii \topsepii2pt% \@plus1\p@ 
\newskip\topsepiii \topsepiii2pt% \@plus1\p@ 
\newskip\itemsepi \itemsepi0pt
\newskip\itemsepii \itemsepii0pt
\newskip\itemsepiii \itemsepiii0pt
\newdimen\LabelSep \LabelSep4.7pt
%
\def\@listI{\leftmargin\leftmargini
            \labelwidth\leftmargini
            \advance\labelwidth-\labelsep
            \parsep 0\p@%
            \topsep \topsepi
            \itemsep\itemsepi}%
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep\topsepii
              \parsep 0pt
              \itemsep\itemsepii}
\def\@listiii {\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep\topsepiii
              \parsep 0pt
              \itemsep\itemsepiii}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
%
\setlength\leftmargini  {2.5em}
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}
\setlength\leftmargin    {\leftmargini}
%
\setlength  \labelsep  {\LabelSep}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
%
\renewcommand\theenumi{\arabic{enumi}}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\theenumiii{\roman{enumiii}}
\renewcommand\theenumiv{\Alph{enumiv}}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{\theenumii.}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\font\lcir = lcircle10 at 12pt
\newcommand\bulls{\raise1.5pt\hbox{\lcir\char'162}}
\def\textbullet{\leavevmode\raise2pt\hbox{\hskip2pt\bulls}}
\def\textendash{{\bf--}}
\def\textasteriskcentered{\leavevmode\raise-1.5pt\hbox{*}}
\def\textperiodcentered{\leavevmode\raise1.5pt\hbox{\bulls}}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
%
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
%
\newenvironment{verse}
               {\let\\=\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item[]}
               {\endlist}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Lists %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Quotes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newenvironment{quote}{\list{}{\rightmargin\leftmargin}%
                \item[]}
               {\endlist}
%
% space above extract will change: regular by (baselineskip - extract baselineskip)
%
\newenvironment{extract}{\par\addvspace{5pt plus2pt}
      \extractfont\ignorespaces 
}{%
      \par\addvspace{5pt plus2pt}}
%
\def\leadintextfont{\itshape}
\def\leadintext#1{{\leadintextfont#1}\hskip2.5pt}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Quotes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\lhfont{\fontsize{10}{12}\selectfont\bfseries}
\def\lh#1{\par\addvspace{\baselineskip}\noindent{\lhfont#1\par}\vspace*{-5.9pt}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  DefList  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcount\deflistcount

\def\deflistmax#1#2{\expandafter\xdef\csname deflistmax@\romannumeral#1\endcsname{#2}}%

\newenvironment{deflist}{\par\addvspace{12pt}%
  \global\advance\deflistcount\@ne%
  \@ifundefined{deflistmax@\romannumeral\deflistcount}{\expandafter\xdef\csname deflistmax@\romannumeral\deflistcount\endcsname{0pt}}{}%
  \noindent\ignorespaces%
  }{\par\addvspace{12pt}%
  \immediate\write\@mainaux{\string\deflistmax{\the\deflistcount}{\csname deflistmax@\romannumeral\deflistcount\endcsname}}%
  }
\def\YES{yes}
\def\deflistentry#1#2{%
  \setbox\@tempboxa\hbox{\ifx\withinappendix\YES\appendixfont\fi#1\hspace*{9.5pt}}%
  \@tempdima\wd\@tempboxa%
  \expandafter\ifdim\@tempdima>\csname deflistmax@\romannumeral\deflistcount\endcsname%
    \expandafter\xdef\csname deflistmax@\romannumeral\deflistcount\endcsname{\the\@tempdima}%
  \else%
    \global\@tempdima\csname deflistmax@\romannumeral\deflistcount\endcsname\relax%
  \fi%
  \noindent\hbox to \@tempdima{\ifx\withinappendix\YES\appendixfont\fi#1\hfill}\unskip{\hangindent\@tempdima#2\par}%
}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Enumerate list %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newskip\listtextleftmargin\listtextleftmargin 0pt%
\newskip\listtextleftmarginii\listtextleftmarginii0pt%
\newskip\listtextleftmarginiii\listtextleftmarginiii0pt%
\newskip\listtextrightmargin\listtextrightmargin0pt%
\newskip\listlabelleftskip \listlabelleftskip0pt%
\newskip\listlabelleftskipii \listlabelleftskipii0pt%
\newskip\listlabelleftskipiii \listlabelleftskipiii0pt%
\newskip\abovelistskipi\abovelistskipi9pt plus2pt
\newskip\belowlistskipi\belowlistskipi9pt plus2pt
\newskip\abovelistskipii\abovelistskipii0pt%
\newskip\belowlistskipii\belowlistskipii0pt%
\newskip\abovelistskipiii\abovelistskipiii0pt%
\newskip\belowlistskipiii\belowlistskipiii0pt%
\newskip\labelsepi \labelsepi5.4pt
\newskip\labelsepii \labelsepii5.2pt
\newskip\labelsepiii \labelsepiii\z@
\newdimen\enumdimwd
\newif\iflabelrightalign\labelrightaligntrue
%
\def\listdevicefonti{}
\def\listdevicefontii{}
\def\listdevicefontiii{}
\def\listfont{}
\def\textlistlabel{}
%
\def\enummax#1{%
  \labelsep\csname labelsep\romannumeral\the\@enumdepth\endcsname
  \ifdim\listtextleftmargin>\z@\labelsepi0pt\fi
  \ifdim\listtextleftmarginii>\z@\labelsepii0pt\fi
  \ifdim\listtextleftmarginiii>\z@\labelsepiii0pt\fi
  \setbox\tempbox\hbox{\csname listdevicefont\romannumeral\the\@enumdepth\endcsname#1\hskip\labelsep}%
  \enumdim\wd\tempbox
  \setbox\tempbox\hbox{\csname listdevicefont\romannumeral\the\@enumdepth\endcsname#1}%
  \enumdimwd\wd\tempbox
  \expandafter\global\csname leftmargin\romannumeral\the\@enumdepth\endcsname\enumdim
  \ifdim\listtextleftmargin>\z@
     \leftmargini\listtextleftmargin
     \ifdim\listlabelleftskip>\z@
        \advance\leftmargini-\listlabelleftskip
     \fi  
  \fi
  \ifdim\listtextleftmarginii>\z@
     \leftmarginii\listtextleftmarginii
     \ifdim\listlabelleftskipii>\z@
        \advance\leftmarginii-\listlabelleftskipii
     \fi  
  \fi
  \ifdim\listtextleftmarginiii>\z@
     \leftmarginiii\listtextleftmarginiii
     \ifdim\listlabelleftskipiii>\z@
        \advance\leftmarginiii-\listlabelleftskipiii
     \fi  
  \fi
  \ifdim\listlabelleftskip>\z@
     \advance\leftmargini\listlabelleftskip
  \fi
  \ifdim\listlabelleftskipii>\z@
     \advance\leftmarginii\listlabelleftskipii
  \fi
    \ifdim\listlabelleftskipiii>\z@
     \advance\leftmarginiii\listlabelleftskipiii
  \fi}
%
\enummax{1.}
%
\def\enumerate{\@ifnextchar[{\@enumerate}{\@enumerate[\csname label\@enumctr\endcsname]}}%% 
%
\def\@enumerate[#1]{\par
      \ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth\@ne
      \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \setcounter{\@enumctr}{1}\enummax{#1}%
      \list
                                                    {\csname label\@enumctr\endcsname}{\usecounter{\@enumctr}%
      \topsep\csname abovelistskip\romannumeral\the\@enumdepth\endcsname
      \itemsep\csname itemsep\romannumeral\the\@enumdepth\endcsname
      \listfont%
      \ifnum \@enumdepth=1 
         \rightmargin\listtextrightmargin
         \advance\rightmargin\rightskip
         \advance\leftmargin\leftskip
         \tempdimen\leftmargini
         \advance\tempdimen-\labelsep
         \def\makelabel##1{\hbox to \tempdimen{\hskip\listlabelleftskip{\csname listdevicefont\romannumeral\the\@enumdepth\endcsname\hbox to \enumdimwd{\iflabelrightalign\hss\fi\textlistlabel##1}}}}%
      \else
      \ifnum \@enumdepth=2
         \tempdimen\leftmarginii
         \advance\tempdimen-\labelsep
         \def\makelabel##1{\hbox to \tempdimen{\hskip\listlabelleftskipii{\csname listdevicefont\romannumeral\the\@enumdepth\endcsname\hbox to \enumdimwd{\iflabelrightalign\hss\fi##1}}}}%
      \else
         \ifnum \@enumdepth=3
         \tempdimen\leftmarginiii
         \advance\tempdimen-\labelsep
         \def\makelabel##1{\hbox to \tempdimen{\hskip\listlabelleftskipiii{\csname listdevicefont\romannumeral\the\@enumdepth\endcsname\hbox to \enumdimwd{\iflabelrightalign\hss\fi##1}}}}%
     \else
         \def\makelabel##1{\hss\llap{\csname listdevicefont\romannumeral\the\@enumdepth\endcsname##1}}%
      \fi\fi
      \fi}\fi}
%
\def\endenumerate{\@topsepadd\csname belowlistskip\romannumeral\the\@enumdepth\endcsname\endlist}%
%
\newenvironment{arabiclist}{%
  \def\theenumi{\arabic{enumi}}
  \def\theenumii{\alph{enumii}}%
  \def\theenumiii{\arabic{enumiii}}%
  \def\theenumiv{\arabic{enumiv}}%
  \renewcommand\labelenumii{(\theenumii)}
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{wherelist}{%
  \def\listdevicefonti{\upshape}
  \listtextleftmargin 0pt
  \abovelistskipi13\p@ plus2pt
  \belowlistskipi13\p@ plus2pt
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{arraylist}{%
  \def\listdevicefonti{\upshape}
  \listtextleftmargin 0pt
  \itemsepi4\p@
  \abovelistskipi13\p@ plus2pt
  \belowlistskipi13\p@ plus2pt
  \begin{enumerate}%
}{%
  \end{enumerate}}

\newenvironment{romanlist}{%
  \def\theenumi{\roman{enumi}}\def\theenumii{\roman{enumii}}%
  \def\theenumiii{\roman{enumiii}}\def\theenumiv{\roman{enumiv}}%
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{alphalist}{%
%\listtextleftmargin 18pt
%\listtextleftmarginii 18pt
\labelsepi10pt
\itemsepi3pt
\labelrightalignfalse
  \def\theenumi{\alph{enumi}}\def\theenumii{\alph{enumii}}%
  \def\theenumiii{\alph{enumiii}}\def\theenumiv{\alph{enumiv}}%
  \renewcommand\labelenumi{(\theenumi)}
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{Romanlist}{%
  \def\theenumi{\Roman{enumi}}\def\theenumii{\Roman{enumii}}%
  \def\theenumiii{\Roman{enumiii}}\def\theenumiv{\Roman{enumiv}}%
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{Alphalist}{%
  \def\theenumi{\Alph{enumi}}\def\theenumii{\Alph{enumii}}%
  \def\theenumiii{\Alph{enumiii}}\def\theenumiv{\Alph{enumiv}}%
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Unnumlist %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\inbrieflistfont{\fontsize{9}{11}\selectfont}

\newdimen\unnumlistindent
\unnumlistindent10pt

\newenvironment{unnumlist}{\par\reset@font%
  \list{}{%
%    \listparindent18pt\raggedright
    \ifinbrief%
      \inbrieflistfont%
    \fi%
    \leftmargin\unnumlistindent%
    \itemindent-\unnumlistindent%
    \parsep0pt%
    \itemsep0pt%
    \partopsep0pt}
    \def\makelable##1{##1}%
}{%
    \endlist\par\reset@font%
}%
%
\def\webadd#1{\par\addvspace{3pt}{\fontsize{9}{12}\selectfont\hskip18pt#1}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% itemize (bullet) %%%%%%%%%%%%%%%%%%%%%%%%%%
%
% define \itemizeiTopSep if it is different from \topsepi
%
\newdimen\itemleftmargin \itemleftmargin\z@ % won't be active in enumerate
\newdimen\itemlabelsep \itemlabelsep6.5\p@ % labelsep in itemize for all levels
%
\def\itemize{%
  \ifnum \@itemdepth >3 \@toodeep\else\ifnum\@enumdepth>0\@itemdepth\@enumdepth\fi \advance\@itemdepth \@ne
     \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
     \list{\csname\@itemitem\endcsname}%
        {%
        \topsep\csname abovelistskip\romannumeral\the\@itemdepth\endcsname%\fi
        \itemsep\csname itemsep\romannumeral\the\@itemdepth\endcsname
        \labelsep\itemlabelsep
        \listfont
        \setbox\tempbox\hbox{\csname\@itemitem\endcsname}
        \csname leftmargin\romannumeral\the\@itemdepth\endcsname\wd\tempbox
        \advance\csname leftmargin\romannumeral\the\@itemdepth\endcsname\itemlabelsep
        \ifnum\@itemdepth=\@ne\ifnum\@enumdepth=0 % if not inside an enumerate
           \rightmargin\listtextrightmargin
           \advance\rightmargin\rightskip
           \advance\csname leftmargin\romannumeral\the\@itemdepth\endcsname\itemleftmargin
           \advance\leftmargini\leftskip
        \else
        \advance\csname leftmargin\romannumeral\the\@itemdepth\endcsname\itemleftmargin
           \advance\leftmarginii\leftskip
        \fi\fi
        \leftmargin\csname leftmargin\romannumeral\the\@itemdepth\endcsname
        \def\makelabel##1{\hss\llap{##1}}}
   \fi}%
%
\def\enditemize{%
\@topsepadd\csname belowlistskip\romannumeral\the\@itemdepth\endcsname%\fi
\endlist}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% enumroman (i) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newenvironment{bulletlist}{%
%%    \abovelistskipii9pt plus2pt%
%%    \belowlistskipii9pt plus2pt%
%%    \itemlabelsep0.8em%8\p@%
%%    \itemleftmargin2em%20\p@
%%    \itemsepi0pt
%%    \renewcommand\labelitemi{\textbullet}%
%%    \renewcommand\labelitemii{\textbullet}%
%%    \renewcommand\labelitemiii{\textbullet}%
%%    \renewcommand\labelitemiv{\textbullet}%
   \begin{itemize}
}{%
   \end{itemize}}
%
\newenvironment{hyphenlist}{%
   \renewcommand\labelitemi{\normalfont\bfseries \textendash}%
   \renewcommand\labelitemii{\normalfont\bfseries \textendash}%
   \renewcommand\labelitemiii{\normalfont\bfseries \textendash}%
   \renewcommand\labelitemiv{\normalfont\bfseries \textendash}%
   \begin{itemize}
}{%
   \end{itemize}}
%
\newenvironment{asterisklist}{%
   \renewcommand\labelitemi{\textasteriskcentered}%
   \renewcommand\labelitemii{\textasteriskcentered}%
   \renewcommand\labelitemiii{\textasteriskcentered}%
   \renewcommand\labelitemiv{\textasteriskcentered}%
   \begin{itemize}
}{%
   \end{itemize}}
%
\newenvironment{caselist}{%
   \def\textlistlabel{Case\ }%
   \begin{enumerate}
}{%
   \end{enumerate}
}
%
\newenvironment{steplist}{%
   \def\textlistlabel{Step\ }%
   \begin{enumerate}
}{%
   \end{enumerate}
}
%
\newenvironment{labellist}{%
   \begin{description}
}{%
   \end{description}
}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% npara %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\NPARfont{}
\newcounter{ncount}
\newenvironment{npara}{\par
   \NPARfont
   \setcounter{ncount}{0}%
   \def\item{\par\addtocounter{ncount}{1}\arabic{ncount}.\hskip2.6pt\ignorespaces}%
   }{\par}%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Comment %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\marginfont{\fontsize{9}{10}\selectfont\bfseries\raggedright}
\newcommand{\comment}[1]{%
 \setlength\overfullrule{0pt}%
 \ifodd\c@page
    \marginpar{%
    \parbox{8pc}{\par\vskip-1.5pt\marginfont please check.\par}}%
    \fboxsep.1pt\fbox{#1}%
 \else
    \marginpar{%
    \parbox{8pc}{\par\vskip-1.5pt\marginfont please check.\par}}
    \fboxsep.1pt\fbox{#1}\fi}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Floats %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\setcounter{topnumber}{5}
\renewcommand\topfraction{.9}
\setcounter{bottomnumber}{5}
\renewcommand\bottomfraction{.9}
\setcounter{totalnumber}{5}
\renewcommand\textfraction{.09}
\renewcommand\floatpagefraction{.901}
\setcounter{dbltopnumber}{1}
\renewcommand\dbltopfraction{.9}
\renewcommand\dblfloatpagefraction{.901}
%
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{11\p@}
\setlength\belowcaptionskip{3.5\p@}
%
\def\FigName{figure}
%
\long\def\@makecaption#1#2{%
    \ifx\FigName\@captype
      \vskip\abovecaptionskip
      \@makefigurecaption{#1.}{#2}%
    \else
      \@maketablecaption{#1.}{#2}%
      \vskip\belowcaptionskip
    \fi
}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Figures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newif\ifFP
\global\FPfalse
\newif\ifCO
\global\COfalse
%
\newcounter{figure}[chapter]
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\ \thefigure}
%
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
%
\def\ftype@affils{1}
%
\newdimen\tempadimen
\def\@makefigurecaption#1#2{\figcaptionfont%
     \ifdim\figwidth >17.5pc%
        \tempdimen\hsize
    \advance\tempdimen-\figwidth
    \divide\tempdimen by 2
    \tempadimen\figwidth
     \else%
    \tempdimen8.75pc
    \tempadimen17.5pc
  \fi
  \hskip\tempdimen\vbox{\hsize\tempadimen\hskip-.5pt\figcaptionfont\leftskip0pt plus .5fil \rightskip0pt plus -.5fil{#1}\ #2\par\parfillskip0pt plus 1fill}%
}
%%
\def\ArtDir{art/}%
\input epsf.sty
%
\newbox\figtempbox
\def\ArtPiece#1{\epsfbox{\ArtDir#1}}%
%
\def\figurebox#1#2#3{%
    \@ifnextchar[{\@figurebox{#1}{#2}{#3}}{\@figurebox{#1}{#2}{#3}[]}}
%
\def\@figurebox#1#2#3[#4]{%
      \def\temp{#1}%
      \def\tempa{#2}%
      \ifx\temp\@empty%
      \else%
        \epsfysize#1%
      \fi%
      \ifx\tempa\@empty%
      \else%
        \epsfxsize#2%
      \fi%
      \gdef\CO{CO}
      \gdef\FP{FP}
      \gdef\@thirdarg{#3}%
      \gdef\@frtharg{#4}%
      \ifx\@frtharg\empty
      \ifx\temp\@empty%
         \global\figheight10pc
      \else%
         \global\figheight#1
      \fi%
      \ifx\tempa\@empty%
         \global\figwidth10pc
      \else%
         \global\figwidth#2
      \fi%
         \ifx\@thirdarg\empty \FPfalse\COfalse\fi
      \else 
%%% for CO and FPO figure conditions
         \ifx\@thirdarg\empty \FPfalse\COfalse
         \else
           \ifx\@thirdarg\FP \FPtrue
           \else
             \ifx\@thirdarg\CO \COtrue
             \else
             \fi
           \fi
         \fi  
%%%
         \setbox\figtempbox=\hbox{\epsfbox{\ArtDir \ifCO #3-\else\ifFP#3-\fi\fi#4}}%
         \global\figwidth=\wd\figtempbox
         \global\figheight=\ht\figtempbox
       \fi
       \ifdim\figwidth>14.75pc%
          \ifdim\figwidth<20pc%
            \centerline{\vbox to 0pt{\hsize\figwidth{\figbox}}}%
          \else
            \vbox to 0pt{\centerline{\figbox}}%%
          \fi
          \else%
            \vbox to 0pt{\centerline{\figbox}}%%
       \fi%
     \vskip-\baselineskip
     \ifodd\c@page
       \vtop to \figheight{\vfill\llap{\marginfont\ifFP 4-Color Artwork
                                                  \else\ifCO 4-Color Artwork
                                                  \else\fi\fi\hskip0.5pc}\vfill}%
     \else
       \vtop to \figheight{\vfill\llap{\marginfont\ifFP 4-Color Artwork
                                                  \else\ifCO 4-Color Artwork
                                                  \else\fi\fi\hskip0.5pc}\vfill}%
     \fi
}%

\def\fpofigbox#1{\FPtrue\def\@fpo{#1}}
%
\def\whiteink{\special{color cmyk 0 0 0 0.0}}
\def\blackink{\special{color cmyk 0 0 0 1.0}}
%
\def\figbox{%
     \ifx\@frtharg\empty  
       \noindent\vbox{\hsize\figwidth%
          \hrule\hbox to\figwidth{\vrule\hfill\vbox to\figheight{\hsize\figwidth\vfill}\vrule}\hrule}%
     \else
        \vbox{\vskip.8pt\hsize\figwidth
          \hbox to\figwidth{\vbox to\figheight{\hsize\figwidth\box\figtempbox}}}%
     \fi
     \ifCO\else\ifFP\vbox to 0pt{\vskip-.6\figheight\llap{\hbox to \figwidth{%
             \hfill\blackink\vrule height20pt width220pt depth5pt\whiteink
             \llap{\fontsize{26}{26}\selectfont\bfseries FPO scaled at \@fpo\%}\blackink\hfill}}}%
     \FPfalse\fi\fi%
}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Tables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcounter{table}[chapter]
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\hskip3.75\p@\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
%
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
%%
\def\@maketablecaption#1#2{%
    {\tablecaptionfont\noindent{\tablecaptionnumfont#1}\ {\itshape #2}\vphantom{y}\par}}%
%
\def\tbl#1#2{%
  \setbox\tempbox\hbox{\tablefont#2}%
  \tabledim\hsize%
  \advance\tabledim-\wd\tempbox
  \ifdim\tabledim>0pt
    \divide\tabledim2
  \else
    \global\tabledim0pt
  \fi
  \global\tableleftskip\tabledim  plus .5fil
  \global\tablerightskip\tabledim plus -.5fil
  \caption{#1}%
  {\centerline{\box\tempbox}}}%
%
\def\TCH#1{\TCHfont#1}%
%
\def\x{@{\extracolsep{\fill}}}
\def\toprule{\\[-10pt]}
\def\colrule{\\[-10pt]}
\def\botrule{\\[-6.5pt]}
\def\crule#1{\\[-9pt]}
%
\def\Hline{%
  \noalign{\ifnum0=`}\fi\hrule \@height 2pt \futurelet%\@height \arrayrulewidth%\@height 1pt 
   \reserved@a\@xhline}
%
\newenvironment{tabnote}{\vskip7\p@%
  \par\tabnotefont\ignorespaces%
  }{\par}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Floats %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Math %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\setlength\arraycolsep{1.5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
%
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
%
\@addtoreset{equation}{chapter}
\renewcommand\theequation{\arabic{equation}}%\thechapter\raise4.5pt\hbox{.}
\def\@eqnnum{{\reset@font\rmfamily\quad (\theequation)}}
%
\def\bstrut{\vrule width0pt depth6pt}
\def\tstrut{\vrule width0pt height9pt}
\jot=3pt
%
\def\text#1{\mathchoice
  {\hbox{\fontsize{\tf@size}{\tf@size}\selectfont#1}}%
  {\hbox{\fontsize{\tf@size}{\tf@size}\selectfont#1}}%
  {\hbox{\fontsize{\sf@size}{\sf@size}\selectfont#1}}%
  {\hbox{\fontsize{\ssf@size}{\ssf@size}\selectfont#1}}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Math %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Footnote %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\thanks#1{%
    \protected@xdef\@thanks{\@thanks
        \protect\footnotetext[\the\c@footnote]{#1}}%
}
%
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule width .4\columnwidth
  \kern 2.6\p@}
\@addtoreset{footnote}{chapter}
\renewcommand\thefootnote{\fnsymbol{footnote}}
%
\def\@fnsymbol#1{\ensuremath{\ifcase#1\or *\or \dagger\or \ddagger\or
   \SS\or \|\or \#\or **\or \dagger\dagger\or \ddagger\ddagger 
   \or \SS\SS \or \|\hskip-1pt\|\or \#\#\or ***\or 
   \dagger\dagger\dagger\or \ddagger\ddagger\ddagger\else\@ctrerr\fi}\relax}
%
\newdimen\@footmax
\def\footmax#1{%
  \setbox\tempbox\hbox{\footnotesize$^{#1}$\hskip.5em}%
  \global\@footmax\wd\tempbox}
%
\footmax{1}
%
\long\def\@makefntext#1{%
    \setbox\tempbox\hbox{#1}%
    \noindent\@hangfrom{\hbox to \@footmax{\hfill\llap{\@makefnmark}\hskip.5em}}{#1}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Footnote %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Page styles  %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
\def\jvol#1{\gdef\@jvol{#1}}\jvol{xx}
\def\jnum#1{\gdef\@jnum{#1}}\jnum{x}
\def\jslugname#1{\jslugnamefalse\gdef\@jslugname{#1}}
\def\jmonth#1{\gdef\@jmonth{#1}}
\def\jyear#1{\gdef\@jyear{#1}}
\def\jend#1{\gdef\@jend{#1}}
\def\issn#1{\gdef\@issn{#1}}
%
\def\jname#1{\gdef\@jname{#1}%
             \gdef\@jtitle{\uppercase{#1}}}
\jname{Biometrika}
\jyear{\the\year}
%\def\@jname{}
%\def\@jtitle{}

\def\jdate#1{\gdef\@jdate{#1}}\def\@jdate{}
\def\jseason#1{\gdef\@jseason{#1}}\def\@jseason{}
\def\doi#1{\gdef\@doi{#1}}\def\@doi{}
\def\pubid#1{\gdef\@pubid{#1}}\def\@pubid{}%

%
%\def\@jvol{}
%\def\@jyear{}
%\def\@jnum{}
\def\@jslugname{}%
\def\@jmonth{}
\def\@jend{99}
\def\@issn{}
%\def\@jname{}
\def\@jdate{}
%
\def\endpage#1{\gdef\@endpage{#1}}
\def\@endpage{0}
%
\def\oddfolio{{\foliofont\ifinbrief{\inbriefpagelable}\fi\thepage}}
\def\evenfolio{{\foliofont\ifinbrief{\inbriefpagelable}\fi\thepage}}
%
\def\ps@headings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{{\evenfolio\hfill\rhfont\scshape\leftmark\hfill\hphantom{\evenfolio}}}%
    \def\@oddhead{{\hphantom{{\oddfolio}}\hfill\rhfont{\itshape\rightmark}\hfill{\oddfolio}}}%
    \let\@mkboth\markboth
%    \def\chaptermark##1{\markboth{##1}{##1}}%
%    \def\sectionmark##1{\markright{##1}}
}
%
\ifprinter
\def\ps@empty{%
      \def\@oddfoot{}%
      \let\@evenfoot\@oddfoot
      \def\@evenhead{}%
      \def\@oddhead{}%
      \let\@mkboth\markboth
      \let\chaptermark\@gobble
      \let\sectionmark\@gobble}
\else
\def\ps@empty{%
      \def\@oddfoot{\hfill\lower\blindfoliodrop\hbox{\thepage}\hfill}
      \let\@evenfoot\@oddfoot
      \def\@evenhead{}%
      \def\@oddhead{}%
      \let\@mkboth\markboth
      \let\chaptermark\@gobble
      \let\sectionmark\@gobble%
}
\fi
%
\def\covjmnth#1{\def\argm{#1}
\ifx\argm\empty%
\else
  \gdef\@covjmnthseason{\ifcase#1\or
    Winter\or Winter\or Spring\or Spring\or Spring\or Summer\or%
    Summer\or Summer\or Fall\or Fall\or Fall\or Winter\fi}%
\fi}

\def\issuename#1{\gdef\@issuename{#1}}
\issuename{Advanced Access publication}

\def\accessdate#1{\xdef\@accessdate{#1}}
\def\@accessdate{}
%% \accessdate{Advanced Access publication March 3, 2007}

%
\def\Copyright{\raise.2ex\hbox{\fontsize{7}{7}\selectfont{\ooalign{\hfil\raise-.12ex\hbox{\kern-.4pt\fontsize{5.5}{5.5}\selectfont C}%
                \hfil\crcr \mathhexbox20D}}}}
%
\def\copyrightinfo#1{\gdef\@copyrightinfo{\let\copyright\Copyright\leavevmode#1}}
\copyrightinfo{\Copyright\ 2007 Biometrika Trust\goodbreak {\em Printed in Great Britain}}

\def\firstpage#1{\xdef\@firstpage{#1}}
\firstpage{}%

\def\punc{,\ }
\def\ps@plain{\firstpage{\thepage}\let\@mkboth\@gobbletwo%
       \def\@evenfoot{}%
       \def\@oddfoot{}%
       \def\@oddhead{\smash{\vbox to 6pt{\hsize\textwidth\slugfont{\itshape\@jname}%
       \ifx\@jyear\@empty\else\ (\@jyear)\fi%
       \ifx\@jvol\@empty\else\punc{\bfseries\@jvol}\fi%
       \ifx\@jnum\@empty\else\punc{\@jnum}\fi%
       \punc\ifnum\@endpage>\thepage{{\itshape pp}. \ifinbrief{\inbriefpagelable}\fi\thepage--\@endpage}\else{{\itshape p}. \ifinbrief{\inbriefpagelable}\fi\thepage}\fi%
       \hfill
               \ifx\@doi\@empty\else{doi}:\ \@doi\fi%
           \ifx\@accessdate\@empty\else\break\hbox to \textwidth{\hfill\@accessdate}\vspace*{-\baselineskip}\fi%
               \break\@copyrightinfo}}}%
       \let\@evenhead\@oddhead
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Page styles  %%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Bibliography Section   %%%%%%%%%%%%%%%%%%
%
\newdimen\bibindent
\newdimen\bibleftmargin
\newdimen\bibitemsep
\newdimen\bibparsep
\newdimen\bibtext
\newdimen\biblabelsep
\newdimen\bibleftmargini
%
%%%%% TRUE FOR CHAPTER TITLE AND FALSE FOR SECTION TITLE %%%%%%%%
\newif\ifbibchapter
\global\bibchaptertrue
%%%%%%%% Unnumberd References %%%%%%%%%%%
\setlength\bibleftmargin  {11pt}
\setlength\bibitemsep  {0pt}
\setlength\bibparsep  {0pt}
%%%%%%%% Numbered Within Squre Bracket %%%%%%%%%%%
\newif\ifnumsqure
\global\numsquretrue
\setlength\biblabelsep  {10pt}
\setlength\bibleftmargini  {5.75pt}
%%%%%%%% Numbered With Dot %%%%%%%%%%%%%%%
\setlength\bibtext  {18pt}
%
\newenvironment{thebibliography}[1]
     {\bibliofont%
      \section*{\bibname}\vspace*{-5\p@}%
%%      \markright{\bibname}
     \def\@tempa{#1}%
     \ifx\@tempa\@empty
     \list{}%
           {\labelwidth0pt\labelsep0pt
           \leftmargin\bibleftmargin%12
           \itemindent-\bibleftmargin
           \itemsep\bibitemsep
           \parsep\bibparsep
           \usecounter{enumiv}%
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\arabic{enumiv}}}%
      \else
          \setbox\tempbox\hbox{\@tempa.}
          \tempdimen\wd\tempbox
          \ifnumsqure
          \else
          \def\@biblabel##1{{\hbox to \tempdimen{\hfill##1.}}}\fi%
           \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
           \labelsep5.5pt\leftmargin\labelsep
%           \advance\leftmargin\bibtext
               \advance\leftmargin\labelwidth
%          \ifnumsqure
%               \advance\leftmargin\labelwidth
%              \fi
           \itemindent0pt
           \itemsep\bibitemsep
           \parsep\bibparsep
           \usecounter{enumiv}%
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\arabic{enumiv}}}%
     \fi
     \sloppy\clubpenalty4000\widowpenalty4000%
     \sfcode`\.=\@m}
     {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
     \endlist}
\newcommand\newblock{}
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Bibliography Section %%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FM  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg {2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
%
\newcommand\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}
    \endgroup
  \fi}
\newcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand\l@section      {\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\l@subsection   {\@dottedtocline{2}{3.8em}{3.2em}}
%\newcommand\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
%\newcommand\l@paragraph    {\@dottedtocline{4}{10em}{5em}}
%\newcommand\l@subparagraph {\@dottedtocline{5}{12em}{6em}}
\let\l@table\l@figure
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End FM  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Appendix  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%\def\withinappendix{no}
%%%%%%\newcommand\appendix{\par
%%%%%%\renewcommand\theequation{\thesection\arabic{equation}}%
%%%%%%\setcounter{equation}{0}
%%%%%%\@addtoreset{equation}{section}
%%%%%%\setcounter{section}{0}
%%%%%%\setcounter{theorem}{0}
%%%%%%\setcounter{lemma}{0}
%%%%%%\setcounter{corollary}{0}
%%%%%%\setcounter{proposition}{0}
%%%%%%\setcounter{definition}{0}
%%%%%%\setcounter{assumption}{0}
%%%%%%\setcounter{remark}{0}
%%%%%%\setcounter{step}{0}
%%%%%%\setcounter{condition}{0}
%%%%%%\setcounter{property}{0}
%%%%%%\setcounter{restriction}{0}
%%%%%%\setcounter{example}{0}
%%%%%%\setcounter{algo}{0}
%%%%%%\renewcommand\thesection{\Alph{section}}
%%%%%%  \renewcommand\section{\@startsection{section}{1}{\z@}{-23.2pt \@plus -2pt \@minus -2pt}{3.9pt}{\sectionfont}}%
%%%%%%  \def\withinappendix{yes}
%%%%%%\appendixfont}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Appendix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\withinappendix{no}
\newcommand\appendix{
\def\sectionfont{\fontsize{10}{12}\centering\scshape}
\appendixfont
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \renewcommand\thesection{\@Alph\c@section}%
  \setcounter{equation}{0}%
  \@addtoreset{equation}{section}%
\def\@Alph##1{%
  \ifcase##1 A\or A\or B\or C\or D\or E\or F\or G\or H\or I\or J\or
   K\or L\or M\or N\or O\or P\or Q\or R\or S\or T\or U\or V\or W\or X\or
   Y\or Z\else\@ctrerr\fi}%
  \renewcommand\theequation{\@Alph\c@section\@arabic\c@equation}%
\def\withinappendix{yes}
}

\newcommand\appendixone{
\def\sectionfont{\fontsize{10}{12}\centering\scshape}
\appendixfont
  \setcounter{equation}{0}%
  \@addtoreset{equation}{section}%
\def\@Alph##1{%
  \ifcase##1 A\or A\or B\or C\or D\or E\or F\or G\or H\or I\or J\or
   K\or L\or M\or N\or O\or P\or Q\or R\or S\or T\or U\or V\or W\or X\or
   Y\or Z\else\@ctrerr\fi}%
  \renewcommand\theequation{{\rm A}\@arabic\c@equation}%
\setcounter{section}{0}
\setcounter{theorem}{0}
\setcounter{lemma}{0}
\setcounter{corollary}{0}
\setcounter{proposition}{0}
\setcounter{definition}{0}
\setcounter{assumption}{0}
\setcounter{remark}{0}
\setcounter{step}{0}
\setcounter{condition}{0}
\setcounter{property}{0}
\setcounter{restriction}{0}
\setcounter{example}{0}
\setcounter{algo}{0}
}

\newcommand\appendixtwo{
\def\sectionfont{\fontsize{10}{12}\centering\scshape}
\appendixfont
  \setcounter{equation}{0}%
\def\@Alph##1{%
  \ifcase##1 A\or B\or C\or D\or E\or F\or G\or H\or I\or J\or
   K\or L\or M\or N\or O\or P\or Q\or R\or S\or T\or U\or V\or W\or X\or
   Y\or Z\else\@ctrerr\fi}%
 \renewcommand\thesection{{\rm B}}
  \renewcommand\theequation{B\@arabic\c@equation}%
\setcounter{section}{0}
\setcounter{theorem}{0}
\setcounter{lemma}{0}
\setcounter{corollary}{0}
\setcounter{proposition}{0}
\setcounter{definition}{0}
\setcounter{assumption}{0}
\setcounter{remark}{0}
\setcounter{step}{0}
\setcounter{condition}{0}
\setcounter{property}{0}
\setcounter{restriction}{0}
\setcounter{example}{0}
\setcounter{algo}{0}
}

\newcommand\appendixthree{
\def\sectionfont{\fontsize{10}{12}\centering\scshape}
\appendixfont
  \setcounter{equation}{0}%
\def\@Alph##1{%
  \ifcase##1 A\or B\or C\or D\or E\or F\or G\or H\or I\or J\or
   K\or L\or M\or N\or O\or P\or Q\or R\or S\or T\or U\or V\or W\or X\or
   Y\or Z\else\@ctrerr\fi}%
 \renewcommand\thesection{{\rm C}}
  \renewcommand\theequation{C\@arabic\c@equation}%
\setcounter{section}{0}
\setcounter{theorem}{0}
\setcounter{lemma}{0}
\setcounter{corollary}{0}
\setcounter{proposition}{0}
\setcounter{definition}{0}
\setcounter{assumption}{0}
\setcounter{remark}{0}
\setcounter{step}{0}
\setcounter{condition}{0}
\setcounter{property}{0}
\setcounter{restriction}{0}
\setcounter{example}{0}
\setcounter{algo}{0}
}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Index  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\alphabet#1{{\bf#1}\par\vskip.5\baselineskip}
%
\newenvironment{theindex}{\thispagestyle{plain}%
      \columnseprule \z@
      \columnsep 12\p@
      \indexfont\markboth{\indexname}{\indexname}
      \tempdimen\normalbaselineskip
      \advance\tempdimen-\baselineskip
      \twocolumn[\@makeschapterhead{\indexname}\vskip\tempdimen]%
      \parindent\z@
      \let\item\@idxitem
}{%
      \par}
\newcommand\@idxitem  {\par\hangindent3em}
\newcommand\subitem   {\par\hangindent3em\hspace*{1em}}
\newcommand\subsubitem{\par\hangindent3em\hspace*{2em}}
\newcommand\indexspace{\par \vskip\baselineskip}
%
%%%%%%%%%%%%%%%%%%%% File Version  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\document{\endgroup
  \ifx\@unusedoptionlist\@empty\else
    \@latex@warning@no@line{Unused global option(s):^^J%
            \@spaces[\@unusedoptionlist]}%
  \fi
  \@colht\textheight
  \@colroom\textheight \vsize\textheight
  \columnwidth\textwidth
  \@clubpenalty\clubpenalty
  \if@twocolumn
    \advance\columnwidth -\columnsep
    \divide\columnwidth\tw@ \hsize\columnwidth \@firstcolumntrue
  \fi
  \hsize\columnwidth \linewidth\hsize
  \begingroup\@floatplacement\@dblfloatplacement
    \makeatletter\let\@writefile\@gobbletwo
    \global \let \@multiplelabels \relax
    \@input{\jobname.aux}%
  \endgroup
  \if@filesw
    \immediate\openout\@mainaux\jobname.aux
    \immediate\write\@mainaux{\relax}%
  \fi
  \process@table
  \let\glb@currsize\@empty  %% Force math initialisation.
  \normalsize
  \everypar{}%
  \@noskipsecfalse
  \let \@refundefined \relax
  \let\AtBeginDocument\@firstofone
  \@begindocumenthook
  \ifdim\topskip<1sp\global\topskip 1sp\relax\fi
  \global\@maxdepth\maxdepth
  \global\let\@begindocumenthook\@undefined
  \ifx\@listfiles\@undefined
    \global\let\@filelist\relax
    \global\let\@addtofilelist\@gobble
  \fi
  \gdef\do##1{\global\let ##1\@notprerr}%
  \@preamblecmds
  \global\let \@nodocument \relax
  \global\let\do\noexpand
  \ignorespaces}
%
\ifprinter
  \def\draftnote{}
  \def\comment{}
  \def\Qauthor#1{}
   \def\QtoAuthor#1{}
   \def\QtoClient#1{}
   \def\QtoQC#1{}
   \def\QtoGL#1{}
   \def\qtoa#1{}
\else
  \def\draftnote{
    \hbox{\ \footnotesize\jobname\vphantom{q}\qquad\jobtag\qquad\today\qquad\currenttime\hfil}}%
   \def\Qauthor#1{\marginpar{{\raggedright\footnotesize\bf #1\endgraf}}}
\fi
\let\qtoa\Qauthor
%
%%%%%%%%%%%%%%%%%%%% Character count  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\printhistory{\vskip11pt\centerline{%
                  \ifx\@received\@empty\else[{\itshape Received\ \@received}\fi%
                  \ifx\@revised\@empty%
                    \ifx\@received\@empty\else]\fi%
                  \else%
                    \ifx\@received\@empty[\else\unskip.\ \fi%
                    {\itshape Revised\ \@revised}]%
                  \fi}}%

\def\enddocument{%
   \normalsize
   \printhistory 
   \@enddocumenthook
   \@checkend{document}%
   \immediate\write\@mainaux{\string\endpage{\thepage}}%
   \clearpage
   \begingroup
     \if@filesw
       \immediate\closeout\@mainaux
       \let\@setckpt\@gobbletwo
       \let\@newl@bel\@testdef
       \@tempswafalse
       \makeatletter \input\jobname.aux
     \fi
     \@dofilelist
     \ifdim \font@submax >\fontsubfuzz\relax
       \@font@warning{Size substitutions with differences\MessageBreak
                  up to \font@submax\space have occured.\@gobbletwo}%
     \fi
     \@defaultsubs
     \@refundefined
     \if@filesw
       \ifx \@multiplelabels \relax
         \if@tempswa
           \@latex@warning@no@line{Label(s) may have changed.
               Rerun to get cross-references right}%
         \fi
       \else
         \@multiplelabels
       \fi
     \fi
   \endgroup
   \deadcycles\z@\@@end}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Output Routine  %%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcount\linecount
\newcount\tempcount
%\def\printlinenumber{{%
%    \loop\ifnum\tempcount<48%
%        \global\advance\linecount\@ne%
%        \hfill \hbox to 22pt{\hfill\the\linecount}%
%        \advance\tempcount1%
%    \repeat%
%}}%
%
\def\@outputpage{%
\begingroup           % the \endgroup is put in by \aftergroup
  \let \protect \noexpand
  \@resetactivechars
  \@parboxrestore
  \shipout \vbox{%
    \set@typeset@protect
    \aftergroup \endgroup
    \aftergroup \set@typeset@protect
                                % correct? or just restore by ending
                                % the group?
  \if@specialpage
    \global\@specialpagefalse\@nameuse{ps@\@specialstyle}%
  \fi
  \if@twoside
    \ifodd\count\z@ \let\@thehead\@oddhead \let\@thefoot\@oddfoot
         \let\@themargin\oddsidemargin
    \else \let\@thehead\@evenhead
       \let\@thefoot\@evenfoot \let\@themargin\evensidemargin
    \fi
  \fi
  \reset@font
  \normalsize
  \baselineskip\z@skip \lineskip\z@skip \lineskiplimit\z@%
    \@begindvi\ifprinter\else\vbox to 0pt{\hsize22pt\normalsize\vskip62pt{}}\fi%
    \vskip \topmargin
    \moveright\@themargin \vbox {%
      \setbox\@tempboxa \vbox to\headheight{%
        \vfil
        \color@hbox
          \normalcolor
          \hb@xt@\textwidth {%
            \let \label \@gobble
            \let \index \@gobble
            \let \glossary \@gobble %% 21 Jun 91
            \@thehead
            }%
        \color@endbox
        }%                        %% 22 Feb 87
      \dp\@tempboxa \z@
      \box\@tempboxa
      \vskip \headsep
      \box\@outputbox
      \baselineskip \footskip
      \color@hbox
        \normalcolor
        \hb@xt@\textwidth{%
          \let \label \@gobble
          \let \index \@gobble      %% 22 Feb 87
          \let \glossary \@gobble   %% 21 Jun 91
          \@thefoot
          }%
      \color@endbox
      }%
    }%
  \global \@colht \normaltextheight%
\stepcounter{page}%
\let\firstmark\botmark
  \ifodd\c@page
     \ifspreadlong\global\spreadlongfalse
     \enlargethispage{\@spreadlong}\fi
  \fi
}
%
%%%%%%%%%%%%%%%%%%%%%%%% Misc. %%%%%%%%%%%%%%%%%%%%%%%
%
\def\@@question#1{\hbox to \hsize{\hfill
                   \rlap{\hskip\marginparsep
                         \vbox to 0pt{\hsize\marginparwidth
                                      \footnotesize
                                      \raggedright#1\endgraf\vss}}}}
\def\@question#1{\ifvmode
                    \@@question{#1}%
                 \else
                     \vadjust{\vbox to 0pt{%
                     \vskip-7.5pt\@@question{#1}\vskip7.5pt}}
                 \fi
}
%
\def\QtoAuthor#1{\@question{{\bf Author:\ #1}}}
\def\QtoClient#1{\@question{{\bf Client/PM:\ #1}}}
\def\QtoQC#1{\@question{{\bf QC:\ #1}}}
\def\QtoGL#1{\@question{{\bf GL:\ #1}}}
%
\newif\ifspreadlong
\def\spreadlong#1{\ifodd\c@page\wlog{Ignoring spreadlong}
                  \else
                     \spreadlongtrue\gdef\@spreadlong{#1}%
                     \enlargethispage{#1}%
                  \fi}
% check specs and enable one or both of these commands
\def\leaflong#1{\enlargethispage{#1}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Output Routine  %%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Theorems  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\arabic#1{{\rm\expandafter\@arabic\csname c@#1\endcsname}}
\RequirePackage[thmmarks]{ntheorem}
%\global\theoremnumbering{Roman}
\theoremheaderfont{\hskip\parindent\normalfont\scshape}
\theorembodyfont{\itshape}
\theoremseparator{.}

\theoremnumbering{arabic}
\newtheorem{theorem}{Theorem}
\theoremnumbering{arabic}
\newtheorem{lemma}{Lemma}
\theoremnumbering{arabic}
\newtheorem{corollary}{Corollary}
\theoremnumbering{arabic}
\newtheorem{proposition}{Proposition}
\theoremnumbering{arabic}
\newtheorem{definition}{Definition}
\theoremnumbering{arabic}
\theoremheaderfont{\hskip\parindent\normalfont\itshape}
\theorembodyfont{\rm}
\newtheorem{assumption}{Assumption}
\theoremnumbering{arabic}
\newtheorem{remark}{Remark}
\theoremnumbering{arabic}
\newtheorem{step}{Step}
\theoremnumbering{arabic}
\newtheorem{condition}{Condition}
\theoremnumbering{arabic}
\newtheorem{property}{Property}
\theoremnumbering{arabic}
\newtheorem{restriction}{Restriction}

\theoremheaderfont{\hskip\parindent\normalfont\itshape}
\theorembodyfont{\normalfont}
\newtheorem{example}{Example}
\newtheorem{algo}{Algorithm}


\font\QEDlogofont=msam10 at 10pt
\def\QEDlogo{\hbox{\QEDlogofont\char'003}}

\theoremsymbol{\QEDlogo}%\rule{1ex}{1ex}}
\theoremheaderfont{\hskip\parindent\normalfont\itshape}
\theorembodyfont{\normalfont}
\theoremseparator{.}
\theoremstyle{nonumberplain}
\newtheorem{proof}{Proof}


\renewtheoremstyle{nonumberplain}%
  {\item[\theorem@headerfont\hskip\labelsep ##1\theorem@separator]}%
  {\item[\theorem@headerfont\hskip \labelsep ##1\ ##3\theorem@separator]}

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Bibliography  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\RequirePackage{natbib}

\renewenvironment{thebibliography}[1]{%
%%  \bibsection%
   \bibliofont%
   \section*{\bibname}\vskip2\p@%
   \parindent \z@\bibpreamble\list% \bibfont
   {\@biblabel{\arabic{NAT@ctr}}}{\@bibsetup{#1}%
    \setcounter{NAT@ctr}{0}}%
    \ifNAT@openbib
      \renewcommand\newblock{\par}
    \else
      \renewcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
    \fi
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax
    \let\citeN\cite \let\shortcite\cite
    \let\citeasnoun\cite
 }{\def\@noitemerr{%
  \PackageWarning{natbib}
     {Empty `thebibliography' environment}}%
  \endlist\vskip-\lastskip}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\medmuskip=4mu 
\thickmuskip=5mu 
%
\pagestyle{headings}
\pagenumbering{arabic}      % Arabic page numbers
%\makeindex
\sloppy
\frenchspacing
%
\voffset-3pc
\hoffset-4pc

%====================
\endinput
%====================
%
% end of biometrika.cls
