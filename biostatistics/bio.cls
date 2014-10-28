\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{biostatistics}
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagefalse
\newif\if@oupdraft
\@oupdraftfalse
\if@compatibility\else
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\fi
\if@compatibility
  \renewcommand\@ptsize{0}
\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{oupdraft}{\@oupdrafttrue}
\if@compatibility\else
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
\DeclareOption{notitlepage}{\@titlepagefalse}
\fi
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}

\ExecuteOptions{letterpaper,10pt,twoside,onecolumn,final}
\ProcessOptions

\RequirePackage{amsthm,multirow,amsmath,fancybox,amssymb}
\RequirePackage[dvips]{graphicx}
\RequirePackage{lastpage}

\renewcommand\normalsize{%
  \@setfontsize\normalsize{10}{12}%
  \abovedisplayskip 10\p@ \@plus 2\p@ \@minus5\p@
  \abovedisplayshortskip \z@ \@plus 3\p@
  \belowdisplayshortskip 6\p@ \@plus 3\p@ \@minus3\p@
 \parindent 15pt \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI
  \if@oupdraft\baselineskip23pt\else\baselineskip12pt\fi
  }

\normalsize
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
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{9.5}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0pt\relax}
\setlength\parindent{12\p@}
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\@twosidetrue
\@mparswitchtrue

%%%%%%%%%%%%%%%%%%%%trim size setting
\textwidth35pc
\textheight48pc
\oddsidemargin6.4mm
\evensidemargin5.9mm
\topmargin13.15mm
\headsep25pt
\parindent15pt
\footskip24pt

\def\gridframe#1{
\let\grid=#1
\ifx Y\grid
\def\gridpl{
\setlength{\fboxsep}{0pt}\setlength{\unitlength}{1pc}\begin{picture}(0,0)
\ifx Y\openac
\put(-0.1,3.9){\framebox(35,49.5)}
\end{picture}
\else
\put(-0.24,1.5){\framebox(35,49.5)}%0.1,2%-1,3
\end{picture}
\fi
}
\def\gridod{\setlength{\unitlength}{1pc}\begin{picture}(0,0)
\put(-0.1,-49.5){\framebox(35.1,50.1)}
\end{picture}}
\def\gridev{\setlength{\unitlength}{1pc}\begin{picture}(0,0)
\put(-0.1,-49.5){\framebox(35.1,50.1)}
\end{picture}}
\else
\def\gridpl{}
\def\gridod{}
\def\gridev{}
\fi
}

%%%%%%%%%%%%%%%Plain Style

\newcommand{\pyear}[1]{\def\@bio@year{#1}}
\def\@bio@year{0}
\newcommand{\pvol}[1]{\def\@bio@vol{#1}}
\def\@bio@vol{0}
\newcommand{\pnum}[1]{\def\@bio@num{#1}}
\def\@bio@num{0}

\def\copyl{
\hfill\fontsize{6.5}{9}\selectfont $\copyright$ T\hspace*{-.5pt}h\hspace*{-.5pt}e
A\hspace*{-.5pt}u\hspace*{-.5pt}t\hspace*{-.5pt}h\hspace*{-.5pt}o\hspace*{-.5pt}r \@bio@year.
P\hspace*{-.5pt}u\hspace*{-.5pt}b\hspace*{-.5pt}l\hspace*{-.5pt}i\hspace*{-.5pt}s\hspace*{-.5pt}h%
\hspace*{-.5pt}e\hspace*{-.5pt}d
b\hspace*{-.5pt}y
O\hspace*{-.5pt}x\hspace*{-.5pt}f\hspace*{-.5pt}o\hspace*{-.5pt}r\hspace*{-.5pt}d
U\hspace*{-.5pt}n\hspace*{-.5pt}i\hspace*{-.5pt}v\hspace*{-.5pt}e\hspace*{-.5pt}%
r\hspace*{-.5pt}s\hspace*{-.5pt}i\hspace*{-.5pt}t\hspace*{-.5pt}y
P\hspace*{-.5pt}r\hspace*{-.5pt}e\hspace*{-.5pt}s\hspace*{-.5pt}s.
A\hspace*{-.5pt}l\hspace*{-.5pt}l
r\hspace*{-.5pt}i\hspace*{-.5pt}g\hspace*{-.5pt}h\hspace*{-.5pt}t\hspace*{-.5pt}s
r\hspace*{-.5pt}e\hspace*{-.5pt}s\hspace*{-.5pt}e\hspace*{-.5pt}r\hspace*{-.5pt}v\hspace*{-.5pt}e\hspace*{-.5pt}d.
F\hspace*{-.5pt}o\hspace*{-.5pt}r
p\hspace*{-.5pt}e\hspace*{-.5pt}r\hspace*{-.5pt}m\hspace*{-.5pt}i\hspace*{-.5pt}s%
\hspace*{-.5pt}s\hspace*{-.5pt}i\hspace*{-.5pt}o\hspace*{-.5pt}n\hspace*{-.5pt}s,
p\hspace*{-.5pt}l\hspace*{-.5pt}e\hspace*{-.5pt}a\hspace*{-.5pt}s\hspace*{-.5pt}e
e-m\hspace*{-.5pt}a\hspace*{-.5pt}i\hspace*{-.5pt}l:
j\hspace*{-.5pt}o\hspace*{-.5pt}u\hspace*{-.5pt}r\hspace*{-.5pt}n\hspace*{-.5pt}a%
\hspace*{-.5pt}l\hspace*{-.5pt}s.p%
\hspace*{-.5pt}e\hspace*{-.5pt}r\hspace*{-.5pt}m\hspace*{-.5pt}i\hspace*{-.5pt}s%
\hspace*{-.5pt}s\hspace*{-.5pt}i\hspace*{-.5pt}o\hspace*{-.5pt}n\hspace*{-.5pt}s@o%
\hspace*{-.5pt}u\hspace*{-.5pt}p.c\hspace*{-.5pt}o\hspace*{-.5pt}m}

\newcommand{\journal}[6]{\def\@jnone{#1}\def\@jntwo{#2}\def\@jnthree{#3}\def\@jnfour{#4}\def\@jnfive{#5}\def\@jnsix{#6}}
\def\ps@plain{%
      \def\@oddfoot{\gridpl\copyl}
      \def\@evnhead{\CROPMARKSA}%
      \def\@oddhead{\CROPMARKSA
        \begin{tabular}{@{}l}\\[-20pt]
        \fontsize{9}{11}\selectfont{\itshape Biostatistics}
        (\@bio@year), {\bf \@bio@vol}, \@bio@num,\, {\itshape pp.} \pageref{firstpage}--\pageref{LastPage}\\[-1pt]
        \fontsize{9}{11}\selectfont{\rm
        doi:10.1093/biostatistics/\jobname}
        \end{tabular}}
      \let\@mkboth\markboth
}

\def\ps@myheadings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\CROPMARKS\gridev }%
      \def\@oddhead{\CROPMARKS\gridod}%
      \let\@mkboth\markboth
}


\def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\CROPMARKS\gridev\thepage\hfill{\sc\leftmark} \hfill }%
      \def\@oddhead{\CROPMARKS\gridod\hfill{{\itshape\rightmark }}\hfill\thepage}%
      \let\@mkboth\markboth
}

\setlength\footnotesep{6.65\p@}
\setlength{\skip\footins}{9\p@ \@plus 4\p@ \@minus 2\p@}
\setcounter{topnumber}{8}
\renewcommand\topfraction{1}
\setcounter{bottomnumber}{3}
\renewcommand\bottomfraction{0.8}
\setcounter{totalnumber}{8}
\renewcommand\textfraction{0}
\renewcommand\floatpagefraction{0.8}
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\def\label@firstpage{%
   \@ifundefined{Hy@Warning}{% hyperref not loaded
     \immediate\write\@auxout{\string
     \newlabel{firstpage}{{}{\thepage}}}
   }{
     \immediate\write\@auxout{\string
     \newlabel{firstpage}{{}{\thepage}{}{%
     \ifHy@pageanchor page.\Hy@temp\fi}{}}}
   }
}

\def\testpages{\expandafter\@rsecondoftwo\r@firstpage}
\def\pagestest{\expandafter\@secondoftwo\r@lastpage}

\def\ps@empty{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \let\@evenhead@empty\let\@oddhead\@empty
  }
\newif\if@@address
\@@addressfalse
\let\@authors\@empty
\let\@address\@empty
\def\address#1{%
  \ifx\@authors\@empty
    \def\@authors{\textit{#1}}
  \else
    \g@addto@macro\@authors{\if@@address\\*\else\\*[4\p@]\fi\textit{#1}\@@addresstrue}
  \fi}
\def\affiliation#1{#1}
\def\email#1{%
  \ifx\@authors\@empty
    \def\@authors{{#1}\@@addresstrue}
  \else
    \g@addto@macro\@authors{\\* {#1}\@@addresstrue}
  \fi}
\def\title{\@dblarg\JOURNAL@title}
\def\JOURNAL@title[#1]#2{%
  \def\@title{{#2}}%
  \def\@shorttitle{#1}}
\newsavebox{\@and}
\savebox{\@and}{{AND}}
\def\and{\usebox{\@and}}
\def\author{\@dblarg\JOURNAL@author}
\def\JOURNAL@author[#1]#2{%
  \ifx\@authors\@empty
    \def\@authors{\if@@address\\*[12pt]\else\\*\fi\@@addressfalse}%
    \g@addto@macro\@authors{\MakeUppercase{#2}}%
    \def\@authors{{#2}}%
  \else
    \g@addto@macro\@authors{\if@@address\\*[8pt]\else\\*\fi\@@addressfalse}%
    \g@addto@macro\@authors{{\MakeUppercase{#2}}}%
  \fi\biostatistics@addshortauthor{#1}}
\def\biostatistics@addshortauthor#1{%
  \g@addto@macro\@shortauthors{%
    \@andorcomma,{\ignorespaces#1\unskip}}}
\def\authorsetal{%
  \let\biostatistics@addshortauthor\@gobble
  \g@addto@macro\@shortauthors{%
    \@andorcomma,\etalname}}
\def\etalname{\textit{et~al}.}
\let\@authors\@empty
\def\@shortauthors{\relax\@gobbletwo}
\def\@andorcomma#1#2\@andorcomma#3{%
  \ifx#3\relax
    \ifx#1\relax%
      \let\@tempa\relax
    \else
      \def\@tempa{#2}\def\@tempb{\etalname}%
      \ifx\@tempa\@tempb
        \def\@tempa{\space#2\@gobbletwo}%
      \else
        \def\@tempa{\space\andname\space #2\@gobbletwo}%
      \fi
    \fi
  \else
    \def\@tempa{#1 #2\@andorcomma#3}%
  \fi
  \@tempa}
\newcommand\maketitle{%
  \thispagestyle{plain}\label@firstpage%
  \renewcommand{\thefootnote}{\fnsymbol{footnote}}
    \setcounter{footnote}{0}
  \let\footnoterule\relax
  \let \footnote \thanks
  \null
  \vbox{
  \centering
    {\vspace*{42.7pt}\fontsize{17}{22}\bfseries\@title\par}%
    \vspace*{1.19pc}%
    \noindent%
        \fontsize{10}{12}\@authors
  \@thanks
  \null
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \vspace*{0pt}
  }\enlargethispage{-12pt}
  \pagestyle{headings}
  \setcounter{footnote}{1}
}
\setcounter{secnumdepth}{3}
\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\renewcommand\thesection      {\@arabic\c@section}
\renewcommand\thesubsection   {{\rm \thesection.\@arabic\c@subsection}}
\renewcommand\thesubsubsection{{\rm \thesubsection .\@arabic\c@subsubsection}}
\renewcommand\theparagraph    {\thesubsubsection\@arabic\c@paragraph}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Sectioning
%%%%%%%%%%%%%%%%%%%%%%%%%%%

\@secpenalty = -300

\newif\if@noskipsec \@noskipsectrue

\def\@startsection#1#2#3#4#5#6{\if@noskipsec \leavevmode \fi
   \par \@tempskipa #4\relax
   \@afterindentfalse
   \ifdim \@tempskipa <\z@ \@tempskipa -\@tempskipa \@afterindentfalse\fi
   \if@nobreak \everypar{}\else
     \addpenalty{\@secpenalty}\addvspace{\@tempskipa}\fi \@ifstar
     {\@ssect{#3}{#4}{#5}{#6}}{\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}

\def\@newstartsection#1#2#3#4#5#6{\if@noskipsec \leavevmode \fi
   \par \@tempskipa #4\relax
   \@afterindentfalse
   \ifdim \@tempskipa <\z@ \@tempskipa -\@tempskipa \@afterindentfalse\fi
   \if@nobreak \everypar{}\else
     \addpenalty{\@secpenalty}\addvspace{\@tempskipa}\fi \@ifstar
     {\@ssect{#3}{#4}{#5}{#6}}{\@dblarg{\@newsect{#1}{#2}{#3}{#4}{#5}{#6}}}}

\def\@newsect#1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth
     \let\@svsec\@empty\else
     \refstepcounter{#1}\edef\@svsec{\csname the#1\endcsname.\hskip4pt}\fi
     \@tempskipa #5\relax
      \ifdim \@tempskipa>\z@
        \begingroup #6\relax
          \@hangfrom{\hskip #3\relax\@svsec}{\interlinepenalty \@M  #8\par}%
        \endgroup
       \csname #1mark\endcsname{#7}\addcontentsline
         {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                      \protect\numberline{\csname the#1\endcsname}\fi
                    #7}\else
        \def\@svsechd{#6\hskip #3\relax  %% \relax added 2 May 90
                   \@svsec #8\csname #1mark\endcsname
                      {#7}\addcontentsline
                           {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                             \protect\numberline{\csname the#1\endcsname}\fi
                       #7}}\fi
     \@xsect{#5}}

\def\@xsect#1{\@tempskipa #1\relax
      \ifdim \@tempskipa>\z@
       \par \nobreak
       \vskip \@tempskipa
       \@afterheading
    \else \global\@nobreakfalse \global\@noskipsectrue
       \everypar{\if@noskipsec \global\@noskipsecfalse
                   \clubpenalty\@M \hskip -\parindent
                   \begingroup \@svsechd \endgroup \unskip
                   \hskip -#1\relax  % relax added 14 Jan 91
                  \else \clubpenalty \@clubpenalty
                    \everypar{}\fi}\fi\ignorespaces}

\newif\if@afterindent \@afterindenttrue

\def\@afterheading{\global\@nobreaktrue
      \everypar{\if@nobreak
                   \global\@nobreakfalse
                   \clubpenalty \@M
                   \if@afterindent \else {\setbox\z@\lastbox}\fi
                 \else \clubpenalty \@clubpenalty
                    \everypar{}\fi}}

\def\@hangfrom#1{\setbox\@tempboxa\hbox{#1}%
      \hangindent \wd\@tempboxa\noindent\box\@tempboxa}

\newcommand\section{\@newstartsection {section}{1}{\z@}%
                                   {1.75pc\@plus0.125\p@\@minus0.125\p@}%
                                   {6pt\relax}%
                                   {\normalfont\normalsize\scshape\centering}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {1.75pc\@plus0.125\p@\@minus0.125\p@}%
                                     {6pt\relax}%
                                     {\normalfont\itshape\centering\noindent}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {1.25pc\@plus0.0125\p@\@minus0.0125\p@}%
                                     {-8.5\p@}%
                                     {\normalfont\normalsize\itshape}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                     {1pc\@plus0.0125\p@\@minus0.0125\p@}%
                                     {-8.5\p@}%
                                     {\normalfont\normalsize\itshape}}
  \setlength\leftmargini  {2.5em}
\leftmargin  \leftmargini
\setlength\leftmarginii  {24\p@}
\setlength\leftmarginiii {18\p@}
\setlength\leftmarginiv  {16\p@}
\setlength\leftmarginv   {12\p@}
\setlength\leftmarginvi  {12\p@}
\setlength  \labelsep  {0.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\setlength\partopsep{2\p@ \@plus 1\p@ \@minus 1\p@}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\def\@listi{\leftmargin\leftmargini
            \parsep 4\p@ \@plus2\p@ \@minus\p@
            \topsep 8\p@ \@plus2\p@ \@minus4\p@
            \itemsep4\p@ \@plus2\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4\p@ \@plus2\p@ \@minus\p@
              \parsep    2\p@ \@plus\p@  \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{$\m@th\bullet$}
\newcommand\labelitemii{\normalfont\bfseries --}
\newcommand\labelitemiii{$\m@th\ast$}
\newcommand\labelitemiv{$\m@th\cdot$}

\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}

\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

\newenvironment{abstract}[2]{\vspace*{19.5pt}\hspace*{\fill}
  {\scshape Summary}\hspace*{\fill}\\[1pt]
  #1\\[14pt]
  \small\textit{Key words}:
  #2}{
}

\def\history#1{\def\@hist{%
  \vspace*{10pt}
  \centering{[\textit{#1}]}}}
\let\@hist\@empty

\def\enddocument{%
   \let\AtEndDocument\@firstofone
   \ifx\@hist\@empty\else\@hist\fi
   \@enddocumenthook
   \@checkend{document}%
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
                  up to \font@submax\space have occurred.\@gobbletwo}%
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

\newenvironment{verse}
{\let\\\@centercr
  \list{}{\itemsep \z@
  \itemindent -1.5em%
  \listparindent \itemindent
  \rightmargin \leftmargin
  \advance\leftmargin 1.5em}%
  \item\relax}
{\endlist}

\newenvironment{quotation}
{\list{}{\listparindent 1.5em%
  \itemindent \listparindent
  \rightmargin \leftmargin
  \parsep \z@ \@plus\p@}%
  \item\relax}
{\endlist}

\newenvironment{quote}
{\list{}{\rightmargin\leftmargin}%
  \item\relax}
{\endlist}

\newbox\boxH
\newbox\boxHrunin


\newenvironment{NL}[1]{
  \setbox\boxH=\hbox{{#1}}%
 \begin{list}{\arabic{enumii}.}{%
 \usecounter{enumii}
  \topsep=6pt
 \partopsep=0pt
 \itemsep=0pt
 \parsep=0pt
 \labelsep=5pt
 \labelwidth\wd\boxH\advance\labelwidth\labelsep
 \leftmargin=24pt
 \rightmargin=0pt
 \listparindent=0pt
}}{\end{list}}%

%%%%%%%%%%%%%%%%%%%%bracketNL
\newenvironment{BNL}[1]{
  \setbox\boxH=\hbox{{#1}}%
 \begin{list}{\arabic{enumii})}{%
 \usecounter{enumii}
  \topsep=6pt plus 2pt minus 1.5pt
 \partopsep=0pt
 \itemsep=2pt
 \parsep=0pt
 \labelsep=6pt
 \labelwidth\wd\boxH\advance\labelwidth\labelsep
 \leftmargin=24pt
 \rightmargin=0pt
 \listparindent=0pt
}}{\end{list}}%

%%%%%%%%%%%%%%%%%AlphabetNL
\newenvironment{ANL}[1]{
  \setbox\boxH=\hbox{{#1}}%
 \begin{list}{\alph{enumii})}{%
 \usecounter{enumii}
  \topsep=6pt plus 2pt minus 1.5pt
 \partopsep=0pt
 \itemsep=2pt
 \parsep=0pt
 \labelsep=5pt
 \labelwidth\wd\boxH\advance\labelwidth\labelsep
 \leftmargin=28pt
 \rightmargin=0pt
 \listparindent=0pt
}}{\end{list}}%

%%%%%%%%%%%%%%roman NL
\newenvironment{RNL}[1]{
  \setbox\boxH=\hbox{{#1}}%
 \begin{list}{\roman{enumii})}{%
 \usecounter{enumii}
  \topsep=6pt plus 2pt minus 1.5pt
 \partopsep=0pt
 \itemsep=2pt
 \parsep=0pt
 \labelsep=5pt
 \labelwidth\wd\boxH\advance\labelwidth\labelsep
 \leftmargin=24pt
 \rightmargin=0pt
 \listparindent=0pt
}}{\end{list}}%

%%%%%%%%%%%DRNL
\newenvironment{DRNL}[1]{
  \setbox\boxH=\hbox{{#1}}%
 \begin{list}{(\roman{enumii})}{%
 \usecounter{enumii}
  \topsep=6pt plus 2pt minus 1.5pt
 \partopsep=0pt
 \itemsep=2pt
 \parsep=0pt
 \labelsep=5pt
 \labelwidth\wd\boxH\advance\labelwidth\labelsep
 \leftmargin=28pt
 \rightmargin=0pt
 \listparindent=0pt
}}{\end{list}}%

%%%%%%%%%%Double alpha NL
\newenvironment{DANL}[1]{
  \setbox\boxH=\hbox{{#1}}%
 \begin{list}{(\Alph{enumii})}{%
 \usecounter{enumii}
  \topsep=6pt plus 2pt minus 1.5pt
 \partopsep=0pt
 \itemsep=2pt
 \parsep=0pt
 \labelsep=5pt
 \labelwidth\wd\boxH\advance\labelwidth\labelsep
 \leftmargin=32pt
 \rightmargin=0pt
 \listparindent=0pt
}}{\end{list}}

\newenvironment{BL}{
  \begin{list}{$\bullet$}{\fontsize{10}{12}\selectfont%
 \topsep=6pt plus 2pt minus 1.5pt
 \partopsep=0pt
 \itemsep=6pt
 \parsep=0pt
 \labelsep=5pt
 \labelwidth\labelsep
 \leftmargin=12pt
 \rightmargin=0pt
 \listparindent=0pt}
}
{\end{list}}

\newenvironment{UNL}{
  \begin{list}{}{
 \topsep=0pt
 \partopsep=0pt
 \itemsep=0pt
 \parsep=0pt
 \leftmargin=0pt
 \rightmargin=0pt
 \listparindent=0pt}
}
{\end{list}}

\newcommand\appendix{
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \renewcommand\thesection{\@Alph\c@section}%
  \setcounter{equation}{0}%
  \@addtoreset{equation}{section}%
\def\@Alph##1{%
  \ifcase##1 A\or A\or B\or C\or D\or E\or F\or G\or H\or I\or J\or
   K\or L\or M\or N\or O\or P\or Q\or R\or S\or T\or U\or V\or W\or X\or
   Y\or Z\else\@ctrerr\fi}%
  \renewcommand\theequation{\@Alph\c@section.\@arabic\c@equation}%
\section*{APPENDIX}}

\newcommand\appendixone{
  \setcounter{equation}{0}%
  \@addtoreset{equation}{section}%
\def\@Alph##1{%
  \ifcase##1 A\or A\or B\or C\or D\or E\or F\or G\or H\or I\or J\or
   K\or L\or M\or N\or O\or P\or Q\or R\or S\or T\or U\or V\or W\or X\or
   Y\or Z\else\@ctrerr\fi}%
  \renewcommand\theequation{\@Alph\c@section.\@arabic\c@equation}%
\section*{APPENDIX \@Alph\c@section}}

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{0.4\p@}
\setlength\doublerulesep{0.4\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{0.4\p@}
\renewcommand\theequation{\thesection.\@arabic\c@equation}
\chardef\@ne=1
\chardef\tw@=2
\chardef\thr@@=3
\def\hb@xt@{\hbox to}
\def\eqnarray{%
   \stepcounter{equation}%
   \def\@currentlabel{\p@equation\theequation}%
   \global\@eqnswtrue
   \m@th
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\\@eqncr
   $$\everycr{}\halign to\displaywidth\bgroup
       \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
      &\global\@eqcnt\@ne\hskip 0.5\arraycolsep \hfil${##}$\hfil
      &\global\@eqcnt\tw@ \hskip 0.5\arraycolsep
         $\displaystyle{##}$\hfil\tabskip\@centering
      &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
         \tabskip\z@skip
      \cr
}
\def\endeqnarray{%
      \@@eqncr
      \egroup
      \global\advance\c@equation\m@ne
   $$\global\@ignoretrue
}
\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}

\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\small\strut #1. #2}%
  \ifdim \wd\@tempboxa >\hsize
    \noindent\small\strut #1. #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\xdef\bio@figure{figure}

\newcounter{tblcap}
\renewcommand\thetblcap{\@arabic\c@tblcap}

\newsavebox{\tabbox}
\newsavebox{\tabnotesbox}
\newlength{\tablen}
\newlength{\tabnoteslen}
\newcommand\centerlast{%
  \advance\leftskip by 0pt plus 1fil%
  \advance\rightskip by 0pt plus -1fil%
   \parfillskip0pt plus 2fil\relax}

\long\def\tblcaption#1#2{\vspace*{-5pt}
\sbox{\tabbox}{#2}
\settowidth{\tablen}{\usebox{\tabbox}}
\vskip8pt\refstepcounter{tblcap}
\centering\parbox[c]{\textwidth}{
\centerlast\noindent\mbox{\noindent\centerlast
 Table \thetblcap.}\hskip4.5pt  {\it #1}}\\[7.75pt]
\fontsize{9}{11}\selectfont \mbox{#2}}

\long\def\tblcaptionnotes#1#2#3{
\sbox{\tabbox}{#2}
\sbox{\tabnotesbox}{\fontsize{9}{11}\selectfont #2}
\settowidth{\tablen}{\usebox{\tabbox}}
\settowidth{\tabnoteslen}{\usebox{\tabnotesbox}}
\vskip8pt\refstepcounter{tblcap}
\centering\parbox[c]{\textwidth}{
\centerlast\noindent\mbox{\noindent\centerlast
 Table \thetblcap.}\hskip4.5pt  {\it #1}}\\[7.75pt]
\fontsize{9}{11}\selectfont \mbox{#2}\\[5pt]
\parbox[@{}l]{\tabnoteslen}{\fontsize{8}{10}\selectfont #3}
}

\long\def\lantblcaption#1#2{
\sbox{\tabbox}{#2}
\settowidth{\tablen}{\usebox{\tabbox}}
\vskip8pt\refstepcounter{tblcap}
\centering\parbox[c]{48pc}{
\centerlast{\noindent\mbox{\noindent\centerlast
 Table \thetblcap.}\hskip4.5pt  {\it #1}}}\\[7.75pt]
\fontsize{9}{11}\selectfont \mbox{#2}}

\long\def\lantblcaptionnotes#1#2#3{
\sbox{\tabbox}{#2}
\sbox{\tabnotesbox}{\fontsize{9}{11}\selectfont #2}
\settowidth{\tablen}{\usebox{\tabbox}}
\settowidth{\tabnoteslen}{\usebox{\tabnotesbox}}
\addtolength{\tabnoteslen}{-2.5pt}
\vskip8pt\refstepcounter{tblcap}
\centering\parbox[c]{48pc}{
\centerlast\noindent\mbox{\noindent\centerlast
 Table \thetblcap.}\hskip4.5pt  {\it #1}}\\[7.75pt]
\fontsize{9}{11}\selectfont \mbox{#2}\\[5pt]
\hspace*{4pt}\parbox[@{}l]{\tabnoteslen}{\fontsize{8}{10}\selectfont #3}
}

\def\tblhead#1{\hline\\[-9pt]#1\\\hline\\[-9.75pt]}
\def\lastline{\\\hline}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{3}
\long\def\endstatement#1{\fontsize{9}{11}\selectfont\itshape\centering#1}
\newenvironment{thebibliography}[1]
     {\section*{\refname\vspace*{-0.5pt}}%
      \list{}%
           {\labelwidth\z@%
            \leftmargin 12\p@
            \itemindent-\leftmargin
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
            \fontsize{9}{11}\selectfont\parindent\z@
            \itemsep5pt
            \parskip0pt\relax%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.\@m
          }
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist
      \endstatement
     \vspace*{3pt}}
\newcommand\newblock{\hskip0.11em\@plus0.33em\@minus0.07em}
\let\@openbib@code\@empty
\renewcommand*{\@biblabel}[1]{}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}

\newcommand\@makefntext[1]{%
    \parindent 6pt%
    \noindent
    \hb@xt@12pt{\hss\@makefnmark}\fontsize{8}{8}\selectfont #1}
\addtolength{\skip\footins}{6pt}
\newcommand\refname{References}
\newcommand\figurename{Fig.}
\newcommand\tablename{Table}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Summary}
\newcommand\today{}
\edef\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\pagestyle{headings}
\pagenumbering{arabic}
\AtBeginDocument{\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\setcounter{footnote}{2}
}

\def\addcontentsline#1#2#3{}%
\let\@period=. \def\period{\hbox{\@period}}
\mathcode`\.="8000
{\catcode`\.=\active\gdef.{\bio@period}}
\def\bio@period{\hbox{\@period}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%begin_CROPMARKS
\newdimen\markwidth
\newdimen\marklength
\newdimen\markdistance
\newdimen\trimwidth
\newdimen\trimheight
\newdimen\rhsink
\newdimen\leftmarginodd
\newdimen\leftmargineven
\newdimen\leftmarginodda
\newdimen\leftmarginevena
\newdimen\auxaaa
\newdimen\auxbbb
\newdimen\auxccc
\newdimen\auxddd
\newdimen\tempbbb
\newdimen\rhsinka

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Numbers supplied down here!
\markwidth=.5pt % Thickness of the mark line
\marklength=20 truept % Length of the mark line
\markdistance=-6 truept % Distance of the real corner to the beg. of the mark
\trimwidth=189mm
\trimheight=246mm
\rhsink=4.55pc % Sink from the top of paper to the BASE of RH
               % where the crops are hooked to (2pc + height of 10pt digit
\leftmarginodd=5pc
\leftmargineven=4.76pc

\leftmarginodda=5pc
\leftmarginevena=4.76pc
\rhsinka=5.1pc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\auxaaa\marklength\advance\auxaaa\markdistance
 \def\oddevenswitch{\ifodd\c@page \auxbbb=\leftmarginodd
  \else\auxbbb=\leftmargineven\fi}%

\def\oddevenswitcha{\ifodd\c@page \tempbbb=\leftmarginodda
  \else\tempbbb=\leftmarginevena\fi}%

\def\Vtrim{\VRHDW{20pt}{0pt}{1pt}}%
\def\Htrim{\VRHDW{1pt}{0pt}{20pt}}%

\def\ULtrim{\koo{-\markdistance}{0pt}{\zeroLR{\Htrim}}%
  \koo{0pt}{-\markdistance}{\zeroLR{\Vtrim}}}%
\def\URtrim{\koo{\markdistance}{0pt}{\zeroLL{\Htrim}}%
  \koo{0pt}{-\markdistance}{\zeroLL{\Vtrim}}}%
\def\LLtrim{\koo{-\markdistance}{0pt}{\zeroUR{\Htrim}}%
  \koo{0pt}{\markdistance}{\zeroUR{\Vtrim}}}%
\def\LRtrim{\koo{\markdistance}{0pt}{\zeroUL{\Htrim}}%
  \koo{0pt}{\markdistance}{\zeroUL{\Vtrim}}}%

\def\CROPMARKS{\oddevenswitch
  \koo{-\auxbbb}{-\rhsink}{%
     \koo{0pt}{0pt}{\ULtrim}%
     \koo{\trimwidth}{0pt}{\URtrim}%
     \koo{0pt}{\trimheight}{\LLtrim}%
     \koo{\trimwidth}{\trimheight}{\LRtrim}
     }}

\def\CROPMARKSA{\oddevenswitcha
  \koo{-\tempbbb}{-\rhsinka}{%
     \koo{0pt}{0pt}{\ULtrim}%
     \koo{\trimwidth}{0pt}{\URtrim}%
     \koo{0pt}{\trimheight}{\LLtrim}%
     \koo{\trimwidth}{\trimheight}{\LRtrim}
     }}

\def\CROPMARKS{\oddevenswitch
  \koo{-\auxbbb}{-\rhsink}{%
     \koo{0pt}{0pt}{\ULtrim}%
     \koo{\trimwidth}{0pt}{\URtrim}%
     \koo{0pt}{\trimheight}{\LLtrim}%
     \koo{\trimwidth}{\trimheight}{\LRtrim}
     }}

\def\CCROPMARKS{\oddevenswitch
 \hbox to0pt{\kern-\auxbbb\vbox to0bp{\kern-\rhsink\hbox to\trimwidth{%
 \koo{-\auxaaa}{0pt}{\VRHDW{\markwidth}{0pt}{\marklength}}%
 \koo{-\markwidth}{-\auxaaa}{\VRHDW{0pt}{\marklength}{\markwidth}}%
 \hfill
 \koo{\markdistance}{0pt}{\VRHDW{\markwidth}{0pt}{\marklength}}%
 \koo{0pt}{-\auxaaa}{\VRHDW{0pt}{\marklength}{\markwidth}}}%
 \nointerlineskip\vskip\trimheight
 \nointerlineskip\hbox to\trimwidth{%
 \koo{-\auxaaa}{0pt}{\VRHDW{0pt}{\markwidth}{\marklength}}%
 \koo{-\markwidth}{\markdistance}{\VRHDW{0pt}{\marklength}{\markwidth}}%
 \hfill
 \koo{\markdistance}{0pt}{\VRHDW{0pt}{\markwidth}{\marklength}}%
 \koo{0pt}{\markdistance}{\VRHDW{0pt}{\marklength}{\markwidth}}}\vss}\hss}}%

%\def\CROPMARKS{} %%%%%%%%% no cropmarks

%%%%%%%%%b-KOO
\long\def\koo#1#2#3{\vbox to0pt{\hsize0pt\kern #2\hbox to0pt{\kern
#1{#3}\hss}\vss}}
\long\def\zeroCC#1{\vbox to0pt{\vss\hbox to0pt{\hss #1\hss}\vss}}
\long\def\zeroLC#1{\vbox to0pt{\vss\hbox to0pt{\hss #1\hss}}}
\long\def\zeroUC#1{\vbox to0pt{\hbox to0pt{\hss #1\hss}\vss}}
\long\def\zeroLR#1{\vbox to0pt{\vss\hbox to0pt{\hss #1}}}
\long\def\zeroCR#1{\vbox to0pt{\vss\hbox to0pt{\hss #1}\vss}}
\long\def\zeroUR#1{\vbox to0pt{\hbox to0pt{\hss #1}\vss}}
\long\def\zeroLL#1{\vbox to0pt{\vss\hbox to0pt{#1\hss}}}
\long\def\zeroCL#1{\vbox to0pt{\vss\hbox to0pt{#1\hss}\vss}}
\long\def\zeroUL#1{\vbox to0pt{\hbox to0pt{#1\hss}\vss}}
\def\VRHDW#1#2#3{\vrule height #1 depth #2 width #3}
\def\HRHDW#1#2#3{\hrule height #1 depth #2 width #3}
\def\HD#1#2{\vrule height #1pt depth #2pt width 0pt\relax}
%%%%%%%%%e-KOO

\def\cropson#1{
\let\cropmarkonoff=#1
\ifx N\cropmarkonoff
\def\CROPMARKSA{}
\def\CROPMARKS{}
\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%end_CROPMARKS

%%%%%%%%%%%%%%%%%%%%Theorem Definition
\newtheoremstyle{theorem}{12pt}{12pt}{\rm}{}{\sffamily}{ }{ }{}
\theoremstyle{theorem}
\newtheorem{theorem}{\sc Theorem}[section]

\newtheoremstyle{lemma}{12pt}{12pt}{\rm}{}{\sffamily}{ }{ }{}
\theoremstyle{lemma}
\newtheorem{lemma}[theorem]{\sc Lemma}

\newtheoremstyle{example}{12pt}{12pt}{\rm}{}{\sffamily}{ }{ }{}
\theoremstyle{example}
\newtheorem{example}[theorem]{\sc Example}

\newtheoremstyle{Assumption}{12pt}{12pt}{\rm}{}{\sffamily}{ }{ }{}
\theoremstyle{Assumption}
\newtheorem{Assumption}[theorem]{\sc Assumption}

\newtheoremstyle{ Proposition}{12pt}{12pt}{\rm}{}{\sffamily}{ }{ }{}
\theoremstyle{ Proposition}
\newtheorem{Proposition}{\sc Proposition}

\newtheoremstyle{remark}{12pt}{12pt}{\rm}{}{\sffamily}{ }{ }{}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{\sc Remark}

\renewenvironment{proof}[1][Proof]{\noindent\textit{#1. } }{\hfill$\square$}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{references}
     {\section*{\refname\vspace*{-0.5pt}
        }%
      \list{}%
           {\labelwidth\z@%
            \leftmargin 12\p@
            \itemindent-\leftmargin
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
            \fontsize{9}{11}\selectfont\parindent\z@
            \itemsep5pt
            \parskip0pt\relax%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.\@m
          }
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist
     }

\sfcode`\. 1000

\def\cropmark#1{
\let\crop=#1
\ifx N\crop
\def\CROPMARKSA{}
\def\CROPMARKS{}
\fi
}

\let\geq=\geqslant
\let\leq=\leqslant
\let\ge=\geqslant
\let\le=\leqslant

\gridframe{N}
\cropmark{N}
\pyear{\the\year}
\pvol{0}
\pnum{0}

\usepackage{natbib}
\frenchspacing
