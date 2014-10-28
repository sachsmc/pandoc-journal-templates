%%
%% This is file `w-art.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% w-class.dtx  (with options: `article,compact,10pt')
%% ====================================================================
%% @LaTeX-file{
%%   version   = "0.9h",
%%   date      = "2004/12/04",
%%   author    = "WILEY-VCH Verlag GmbH \& Co. KGaA, Weinheim",
%%   copyright = "Copyright 2002--2004 WILEY-VCH Verlag GmbH \& Co. KGaA, Weinheim,
%%                all rights reserved.  Copying of this file is
%%                authorized only if either:
%%                (1) you make absolutely no changes to your copy,
%%                including name; OR
%%                (2) if you do make changes, you first rename it
%%                to some other name.",
%% }
%% ====================================================================
%% $Id: w-class.dtx,v 1.79 2004/12/04 12:25:30 uwe Exp $
%% ====================================================================
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
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{w-art}
              [2004/12/04 v0.9h
 document class for WILEY-VCH Verlag GmbH \& Co. KGaA, Weinheim]
\let\@xp=\expandafter
\let\@nx=\noexpand
\def\@oparg#1[#2]{\@ifnextchar[{#1}{#1[#2]}}
\long\def\@ifempty#1{\@xifempty#1@@..\@nil}
\long\def\@xifempty#1#2@#3#4#5\@nil{%
  \ifx#3#4\@xp\@firstoftwo\else\@xp\@secondoftwo\fi}
\long\def\@ifnotempty#1{\@ifempty{#1}{}}
\def\setboxz@h{\setbox\z@\hbox}
\def\@addpunct#1{\ifnum\spacefactor>\@m \else#1\fi}
\def\frenchspacing{\sfcode`\.1006\sfcode`\?1005\sfcode`\!1004%
  \sfcode`\:1003\sfcode`\;1002\sfcode`\,1001 }
\def\@tempa#1#2\@nil{\edef\@classname{#1}}
\expandafter\@tempa\@currnamestack{}{}{}\@nil
\ifx\@classname\@empty \edef\@classname{\@currname}\fi
\def\@True{00}
\def\@False{01}
\newcommand\newswitch[2][False]{%
  \expandafter\@ifdefinable\csname ?@#2\endcsname{%
    \global\expandafter\let\csname ?@#2\expandafter\endcsname
      \csname @#1\endcsname
  }%
}
\newcommand{\setFalse}[1]{%
  \expandafter\let\csname ?@#1\endcsname\@False
}
\newcommand{\setTrue}[1]{%
  \expandafter\let\csname ?@#1\endcsname\@True
}
\newswitch{}
\DeclareRobustCommand{\except}[1]{%
  \if\csname ?@#1\endcsname \expandafter\@gobble
  \else \expandafter\@firstofone
  \fi
}
\DeclareRobustCommand{\for}[1]{%
  \if\csname ?@#1\endcsname \expandafter\@firstofone
  \else \expandafter\@gobble
  \fi
}
\DeclareRobustCommand{\forany}[1]{%
  \csname for@any@01\endcsname#1,?,\@nil
}
\@namedef{for@any@\@False}#1,{%
  \csname for@any@%
    \csname ?@\zap@space#1 \@empty\endcsname
  \endcsname
}
\@namedef{?@?}{x}
\@namedef{for@any@\@True}#1\@nil#2{#2}
\def\for@any@x{\@car\@gobble}
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagefalse
\if@compatibility\else
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
    {\ClassError{w-class}{Option `a5paper' not supported}{}}
\DeclareOption{b5paper}
    {\ClassError{w-class}{Option `b5paper' not supported}{}}
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
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\def\Dateposted#1{\def\@dateposted{#1}}%
\let\@dateposted\@empty
\def\@setdateposted{%
  \newline \publishedonline@name\ \@dateposted}
\def\article@logo{%
  \set@logo{%
    \publname
    \ifx\@empty\current@volume
    \else \newline\volinfo, \pageinfo
    \fi
    \newline \@PII
    \ifx\@empty\@dateposted \else \@setdateposted\fi
  }%
}
\long\def\set@logo#1{%
  \vbox to\headheight{%
    \noindent#1\par\vss
  }%
}
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
\DeclareOption{notitlepage}{\@titlepagefalse}
\fi
\newif\if@autolastp\let\if@autolastp\iftrue
\DeclareOption{autolastpage}{\let\if@autolastp\iftrue}
\DeclareOption{noautolastpage}{\let\if@autolastp\iffalse}
\newif\if@separatedheads
\newif\if@finallayout
\newlength{\aux@tw}
\DeclareOption{embeddedheads}{\@separatedheadsfalse}
\DeclareOption{separatedheads}{\@separatedheadstrue}
\DeclareOption{finallayout}{\@finallayouttrue}
\DeclareOption{nopubldata}{\@finallayoutfalse}
\newif\if@firstlevelperiod
\newif\if@trailingperiod
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{
  \input{fleqn.clo}
  \PassOptionsToPackage{fleqn}{amsmath}
  \PassOptionsToPackage{fleqn}{amstex}
  \AtEndOfClass{\mathindent\MathIndentation}
  \AtBeginDocument{\setlength{\@mathmargin}{\MathIndentation}
}
}%
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
\let\if@referee\iffalse
\DeclareOption{referee}{\let\if@referee\iftrue}
\def\makereferee{\def\baselinestretch{1.5}}
\def\copyrightinfo#1#2{\def\copyrightyear{#1}\def\copyrightholder{#2}}
\copyrightinfo{0000}{(copyright holder)}
\def\cpyear@test{0000}
\newcommand{\journalname}[3]{%
\def\abbr@journalname{#1}\def\short@journalname{#2}\def\long@journalname{#3}}
\newcommand{\journalurl}[1]{%
\def\journal@url{#1}}
\@ifundefined{TitleWidth}{\newlength{\TitleWidth}}{}%
\newskip\vch@skip
\newlength{\BeforeMainTextSkip}
\newlength{\MathIndentation}
\newcommand{\received@name}{}
\newcommand{\revised@name}{}
\newcommand{\accepted@name}{}
\newcommand{\publishedonline@name}{}
\newcommand{\@setdate}{}
\providecommand{\FirstPageTopSkip}{}
\providecommand{\fndelim}{}
\newif\ifKeywordsinTitle\KeywordsinTitlefalse
\newif\ifSubjClassinTitle\SubjClassinTitlefalse
\newif\ifAddressinTitle\AddressinTitlefalse
\newif\ifSectNumUpright\SectNumUprightfalse
\newif\ifDatesinTitle\DatesinTitletrue
\newif\ifHeadUnderl\HeadUnderlfalse
\newif\ifExcludeTitleFromSkip\ExcludeTitleFromSkipfalse
\newif\ifExcludeAuthorFromSkip\ExcludeAuthorFromSkipfalse
\newif\ifExcludeAddressFromSkip\ExcludeAddressFromSkipfalse
\newif\ifEmbeddedAbstractHead\EmbeddedAbstractHeadfalse
\newif\if@noabstractname\@noabstractnamefalse
\newif\if@abstractcopyright\@abstractcopyrighttrue
\newif\if@hangaddrlabel\@hangaddrlabelfalse
\newif\if@indentrunhead\@indentrunheadfalse
\newif\if@abstreotitle\@abstreotitletrue
\newif\if@authoratbotitle\@authoratbotitlefalse
\newif\if@captiontwopack\@captiontwopackfalse
\def\sectionfont#1{\def\s@font{#1}}          \def\s@font{}
\def\subsectionfont#1{\def\ss@font{#1}}      \def\ss@font{}
\def\subsubsectionfont#1{\def\sss@font{#1}}  \def\sss@font{}
\def\paragraphfont#1{\def\pg@font{#1}}       \def\pg@font{}
\def\subparagraphfont#1{\def\spg@font{#1}}   \def\spg@font{}
\def\pretitlefont#1{\def\pt@font{#1}}        \def\pt@font{}
\def\titlefont#1{\def\t@font{#1}}            \def\t@font{}
\def\subtitlefont#1{\def\st@font{#1}}        \def\st@font{}
\def\authorfont#1{\def\a@font{#1}}           \def\a@font{}
\def\addressfont#1{\def\addr@font{#1}}       \def\addr@font{}
\def\addresslabelfont#1{\def\addrl@font{#1}}  \def\addrl@font{}
\def\currentaddressfont#1{\def\curraddr@font{#1}}       \def\curraddr@font{}
\def\translatorfont#1{\def\tr@font{#1}}       \def\tr@font{}
\def\dedicatoryfont#1{\def\dc@font{#1}}      \def\dc@font{}
\def\keywordsfont#1{\def\kw@font{#1}}        \def\kw@font{}
\def\keywordslabelfont#1{\def\kwl@font{#1}}  \def\kwl@font{}
\def\keywordspunct#1{\def\kw@punct{#1}}        \def\kw@punct{}
\def\subjclassfont#1{\def\scl@font{#1}}      \def\scl@font{}
\def\subjclasslabelfont#1{\def\scll@font{#1}} \def\scll@font{}
\def\abstractfont#1{\def\abstr@font{#1}}      \def\abstr@font{}
\def\abstractlabelfont#1{\def\abstrl@font{#1}} \def\abstrl@font{}
\def\datesfont#1{\def\dt@font{#1}}           \def\dt@font{}
\def\headingstextfont#1{\def\h@font{#1}}     \def\h@font{}
\def\andfont#1{\def\and@font{#1}}            \def\and@font{}
\def\indexsize#1{\def\index@size{#1}}        \def\index@size{}
\def\bibsize#1{\def\bib@size{#1}}            \def\bib@size{}
\def\textheadindent#1{\def\th@indent{#1}}    \def\th@indent{}
\def\headindent#1{\def\h@indent{#1}}         \def\h@indent{}
\def\afterauthorskip#1{\def\aa@skip{#1}}     \def\aa@skip{}
\def\afterkwskip#1{\def\akw@skip{#1}}        \def\akw@skip{}
\def\afterscskip#1{\def\asc@skip{#1}}        \def\asc@skip{}
\def\DOIprefix#1{\def\doi@prefix{#1}}        \def\doi@prefix{}
\def\DOIsuffix#1{\def\doi@suffix{#1}}        \def\doi@suffix{}
    \textheadindent{0mm}
    \headindent{0mm}
    \@firstlevelperiodfalse
    \@trailingperiodfalse
\let\journalopt\@empty
\DeclareOption*{\InputIfFileExists{w-\CurrentOption.clo}{%
\let\journalopt\CurrentOption}{%
\ClassWarning{\@classname}{Specified option or subpackage
"\CurrentOption" not found -}\OptionNotUsed}}
\newif\if@normalheading
\DeclareOption{indentedheading}{
\AtBeginDocument{%
  \@ifundefined{Hy@Info}{\@normalheadingfalse%
   \renewcommand{\@seccntformat}[1]{%
      \if@trailingperiod
         \sbox\@tempboxa{\csname the#1\endcsname.}%
      \else
         \sbox\@tempboxa{\csname the#1\endcsname}%
      \fi
      \setlength\@tempdimc{\th@indent}%
      \advance\@tempdimc -\wd\@tempboxa%
      \advance\@tempdimc -.5em%
      \setlength\fboxsep{\z@}\setlength\fboxrule{\z@}%
      \if@trailingperiod
         \fbox{{\csname the#1\endcsname}.}%
      \else
         \fbox{{\csname the#1\endcsname}}%
      \fi
      \fbox{\enspace}%
      \fbox{\hskip\@tempdimc}%
      }%
}{\@normalheadingtrue\ClassWarning{\@classname}{The option "indentedheading"
  does not work with the package "hyperref". Will use "normalheading".}}%
}
}
\DeclareOption{normalheading}{%
\@normalheadingtrue
}%
\ExecuteOptions{letterpaper,10pt,twoside,onecolumn,final,
normalheading,separatedheads,nopubldata}
\ProcessOptions
\ifx\journalopt\@empty
\ClassError{WILEY-Jour}{No valid journal specified in option list}{}
\expandafter\stop
\fi
\if@compatibility
  \def\@tempa{\RequirePackage{amstex}\relax}%
\else
  \@ifclasswith{\@classname}{nomath}{%
    \let\@tempa\relax
  }{%
    \def\@tempa{\RequirePackage{amsmath}\relax}%
  }%
\fi
\@tempa % load amstex.sty or amsmath.sty
\@ifundefined{numberwithin}{%
  \newcommand{\numberwithin}[3][\arabic]{%
    \@ifundefined{c@#2}{\@nocounterr{#2}}{%
      \@ifundefined{c@#3}{\@nocnterr{#3}}{%
        \@addtoreset{#2}{#3}%
        \@xp\xdef\csname the#2\endcsname{%
          \@xp\@nx\csname the#3\endcsname .\@nx#1{#2}}}}%
  }
  \csname newtoks\endcsname\@emptytoks
}{}
\RequirePackage{calc}
%% Begin of size option 10pt
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt 
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@ixpt\@xiipt%
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
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\def\@xivpt{14.05pt}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\bsize{\@setfontsize\bsize\@ixpt{10.5}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\if@twocolumn
  \setlength\parindent{1em}
\else
  \setlength\parindent{15\p@}
\fi
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
%\setlength\headsep   {25\p@}
\setlength\topskip   {10\p@}
\setlength\maxdepth{.5\topskip}
\if@twocolumn
 \setlength\marginparsep {10\p@}
\else
  \setlength\marginparsep{11\p@}
\fi
\setlength\marginparpush{5\p@}
\if@compatibility
\else
  \if@twoside
    \setlength\@tempdima        {\paperwidth}
    \addtolength\@tempdima      {-\textwidth}
    \setlength\oddsidemargin    {.4\@tempdima}
    \addtolength\oddsidemargin  {-1in}
    \setlength\marginparwidth   {.6\@tempdima}
    \addtolength\marginparwidth {-\marginparsep}
    \addtolength\marginparwidth {-0.4in}
  \else
    \setlength\@tempdima        {\paperwidth}
    \addtolength\@tempdima      {-\textwidth}
    \setlength\oddsidemargin    {.5\@tempdima}
    \addtolength\oddsidemargin  {-1in}
    \setlength\marginparwidth   {.5\@tempdima}
    \addtolength\marginparwidth {-\marginparsep}
    \addtolength\marginparwidth {-0.4in}
    \addtolength\marginparwidth {-.4in}
  \fi
  \ifdim \marginparwidth >2in
     \setlength\marginparwidth{2in}
  \fi
  \@settopoint\oddsidemargin
  \@settopoint\marginparwidth
  \setlength\evensidemargin  {\paperwidth}
  \addtolength\evensidemargin{-2in}
  \addtolength\evensidemargin{-\textwidth}
  \addtolength\evensidemargin{-\oddsidemargin}
  \@settopoint\evensidemargin
\fi
\if@compatibility
\else
  \setlength\topmargin{\paperheight}
  \addtolength\topmargin{-2in}
  \addtolength\topmargin{-\headheight}
  \addtolength\topmargin{-\headsep}
  \addtolength\topmargin{-\textheight}
  \addtolength\topmargin{-\footskip}     % this might be wrong!
  \addtolength\topmargin{-.5\topmargin}
  \@settopoint\topmargin
\fi
\setlength\footnotesep{6.65\p@}
\setlength{\skip\footins}{9\p@ \@plus 4\p@ \@minus 2\p@}
\setcounter{topnumber}{4}
\renewcommand\topfraction{.97}
\setcounter{bottomnumber}{4}
\renewcommand\bottomfraction{.97}
\setcounter{totalnumber}{4}
\renewcommand\textfraction{.03}
\renewcommand\floatpagefraction{.9}
\setcounter{dbltopnumber}{4}
\renewcommand\dbltopfraction{.97}
\renewcommand\dblfloatpagefraction{.9}
\setlength\floatsep    {8\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{14\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {8\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\newcommand{\setfloattype}[1]{\def\@captype{#1}}
\newenvironment{nofloat}[1]
  {\setfloattype{#1}
   \begin{trivlist}\item[]}
  {\end{trivlist}}
\if@autolastp
\newcounter{lastpage}
\gdef\readlastpagenumber{
\@ifundefined{lastpagenumber}
{\setcounter{lastpage}{0}}{\setcounter{lastpage}{\lastpagenumber}}
\ifx\end@page\empty
   \let\end@page\lastpagenumber
\else
    \ClassWarning{\@classname}{Option autopagenumber is set\MessageBreak
     Endpage number \end@page\space will be ignored}
   \let\end@page\lastpagenumber
\fi
}
\def\writelastpagenumber{\clearpage
\addtocounter{page}{-1}%
   \immediate\write\@auxout{\string\gdef\string\lastpagenumber{\thepage}}%
   \immediate\write\@auxout{\string\newlabel{LastPage}{{}{\thepage}}}%
   \addtocounter{page}{1}}
\fi
\def\ps@empty{\let\@mkboth\@gobbletwo
  \let\@oddhead\@empty \let\@evenhead\@empty
  \let\@oddfoot\@empty \let\@evenfoot\@empty
  \global\topskip\normaltopskip}
\def\ps@plain{\ps@empty
  \def\@oddfoot{\normalfont\scriptsize \hfil\thepage\hfil}%
  \let\@evenfoot\@oddfoot}
\newswitch{runhead}
\def\ps@headings{\ps@empty
  \def\@evenhead{%
    \setTrue{runhead}%
    \hss\vbox{\hsize\textwidth\h@font
    \let\@makefnmark\relax  \let\@thefnmark\relax%
    \if@indentrunhead
      \hbox to \textwidth{\makebox[0mm][l]{\thepage}\vphantom{qb}%
      \hspace{\TitleSkip minus 7mm}\leftmark{}{}\hfil}
    \else
      \hbox to \textwidth{\thepage\vphantom{qb}\hfill\leftmark{}{}}
    \fi
    \ifHeadUnderl\vskip 2pt \hrule\fi}\if@twocolumn\hss\fi}%
  \def\@oddhead{%
    \setTrue{runhead}%
    \if@twocolumn\hss\fi\vbox{\hsize\textwidth\h@font
    \hbox to \textwidth{\rightmark{}{}\hfill\vphantom{qb}\thepage}
    \ifHeadUnderl\vskip 2pt \hrule\fi}\hss}%
%%   \def\@oddfoot{
%% \normalfont\fontsize{6}{7\p@}\normalfont \hfil
%% \copyright\ \copyrightyear\ \copyrightholder}%
  \def\@oddfoot{
\normalfont\fontsize{6}{7\p@}\normalfont \hfil
\if@finallayout
\copyright\ \copyrightyear\ \copyrightholder
\else
\copyright\ \current@year\ \copyrightholder\hfill {\bf{www.biometrical-journal.com}}
\fi}%
  \let\@evenfoot\@oddfoot
  \let\@mkboth\markboth
}
\let\sectionname\@empty
\let\subsectionname\@empty
\let\subsubsectionname\@empty
\let\paragraphname\@empty
\let\subparagraphname\@empty
\@ifundefined{leftmark}{%
 \def\leftmark{\expandafter\@firstoftwo\topmark{}{}}}{}
\@ifundefined{rightmark}{%
 \def\rightmark{\expandafter\@secondoftwo\botmark{}{}}}{}
\@ifundefined{ps@firstpage}{%
\def\ps@firstpage{\ps@empty
  \def\@oddfoot{\normalfont\scriptsize \hfil\thepage\hfil
     \global\topskip\normaltopskip}%
  \let\@evenfoot\@oddfoot
  \def\@oddhead{\@serieslogo\hss}%
  \let\@evenhead\@oddhead % in case an article starts on a left-hand page
}}{}
\long\def\@nilgobble#1\@nil{}
\def\markboth#1#2{%
  \begingroup
    \@temptokena{{#1}{#2}}\xdef\@themark{\the\@temptokena}%
    \mark{\the\@temptokena}%
  \endgroup
  \if@nobreak\ifvmode\nobreak\fi\fi}
\def\ps@myheadings{\ps@headings \let\@mkboth\@gobbletwo}
\newskip\normaltopskip
\normaltopskip=10pt \relax
\let\sectionmark\@gobble
\let\subsectionmark\@gobble
\let\subsubsectionmark\@gobble
\let\paragraphmark\@gobble
%%%%%%%%%%%%%
\newcommand{\headelem}[6]{
\begingroup
\advance\leftskip#3\advance\rightskip#4
\vskip #1
\bgroup#5\relax
\tolerance=1000\setlength{\emergencystretch}{1em}%\hyphenpenalty10000
\noindent#6\par
\egroup
\vskip #2
\endgroup}
\gdef\shorttitle{}
\renewcommand*{\title}[2][]{\gdef\shorttitle{#1}\gdef\@title{#2}}
\newcommand*{\pretitle}[1]{\gdef\@pretitle{#1}}
\newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}
\edef\title{\@nx\@dblarg
  \@xp\@nx\csname\string\title\endcsname}
\renewcommand{\author}[2][]{%
  \ifx\@empty\authors
    \gdef\authors{#2}%
  \else
    \g@addto@macro\authors{\and#2}%
    \g@addto@macro\addresses{\author{}}%
  \fi
  \@ifnotempty{#1}{%
    \ifx\@empty\shortauthors
      \gdef\shortauthors{#1}%
    \else
      \g@addto@macro\shortauthors{\and#1}%
    \fi
  }%
}
\edef\author{\@nx\@dblarg
  \@xp\@nx\csname\string\author\endcsname}
\let\shortauthors\@empty   \let\authors\@empty
\let\addresses\@empty      \let\thankses\@empty
\def\instt#1{\hbox{\@textsuperscript{\normalfont\unskip#1}}}
\newcommand{\address}[2][]{\g@addto@macro\addresses{\address{\let\inst\instt{#1}}{#2}}}
\newcommand{\curraddr}[2][]{\g@addto@macro\addresses{\curraddr{#1}{#2}}}
\renewcommand{\thanks}[1]{%
  \@ifnotempty{#1}{\g@addto@macro\thankses{\thanks{#1}}}%
}
\def\@setaddresses{\par
  \nobreak \begingroup
\addr@font
  \def\author##1{\nobreak}
  \interlinepenalty\@M
  \def\address##1##2{\begingroup
     \par
     \noindent
\if@hangaddrlabel\else
    \@ifnotempty{##1}{\a@font\ignorespaces##1\unskip\ }%
\fi
\if@hangaddrlabel
\@tempdima=0pt%
\@ifnotempty{##1}{%
  \setbox\@tempboxa\hbox{##1}%
  \advance\@tempdima by \wd\@tempboxa
  \advance\@tempdima by 1mm}%
      \makebox[0mm][l]{\ignorespaces##1}{%
        \@hangfrom{\hskip \@tempdima}%
          \interlinepenalty \@M\addr@font\ignorespaces ##2\@@par}%
\else
    {\addr@font\ignorespaces##2}
\fi
\par\endgroup}%
  \def\curraddr##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\noindent{\itshape Current address}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      \curraddr@font##2\par}\endgroup}%
  \def\email##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\noindent{\normalfont E-mail}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      \ttfamily##2\par}\endgroup}%
  \def\urladdr##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\noindent{\itshape URL}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      \ttfamily##2\par}\endgroup}%
  \addresses
  \endgroup
}
\let\@date\@empty
\def\dedicatory#1{\def\@dedicatory{#1}}
\let\@dedicatory=\@empty
\def\keywords#1{\def\@keywords{#1}}
\let\@keywords=\@empty
\newcommand*\subjclass[2][1991]{%
  \def\@subjclass{#2}%
  \@ifundefined{subjclassname@#1}{%
    \ClassWarning{\@classname}{Unknown edition (#1) of Mathematics
      Subject Classification; using '1991'.}%
  }{%
    \@xp\let\@xp\subjclassname\csname subjclassname@#1\endcsname
  }%
}
\let\@subjclass=\@empty
\def\commby#1{\def\@commby{(Communicated by #1)}}
\let\@commby=\@empty
\newcommand{\xandlist}[4]{\@andlista{{#1}{#2}{#3}}#4\and\and}
\def\@andlista#1#2\and#3\and{\@andlistc{#2}\@ifnotempty{#3}{%
  \@andlistb#1{#3}}}
\def\@andlistb#1#2#3#4#5\and{%
  \@ifempty{#5}{%
    \@andlistc{#2#4}%
  }{%
    \@andlistc{#1#4}\@andlistb{#1}{#3}{#3}{#5}%
  }}
\let\@andlistc\@iden
\newcommand{\nxandlist}[4]{%
  \def\@andlistc##1{\toks@\@xp{\the\toks@##1}}%
  \toks@{\toks@\@emptytoks \@andlista{{#1}{#2}{#3}}}%
  \the\@xp\toks@#4\and\and
  \edef#4{\the\toks@}%
  \let\@andlistc\@iden}
\newcommand{\andify}{%
  \nxandlist{\unskip, }{\unskip{} {\and@font \andname}~}{\unskip, {\and@font \andname}~}}
\newcommand{\normalandify}{%
  \nxandlist{\unskip, }{\unskip{} {\normalfont \andname}~}{\unskip, {\normalfont \andname}~}}
\def\and{\unskip{ }and \ignorespaces}
\def\maketitle{\par
  \@topnum\z@ % this prevents figures from falling at the top of page 1
  \ifx\copyrightyear\cpyear@test\relax
  \let\copyrightyear\current@year
  \fi
  \if@autolastp\readlastpagenumber\fi
  \thispagestyle{firstpage}% this sets first page specifications
  \ifx\@empty\shortauthors \let\shortauthors\shorttitle
  \else \normalandify\shortauthors
  \fi
  \@maketitle@hook
  \begingroup
  \if@twocolumn
    \twocolumn[\FirstPageTopSkip\@maketitle]%
  \else
    \@maketitle
  \fi
  \toks@\@xp{\shortauthors}\@temptokena\@xp{\shorttitle}%
  \toks4{\def\\{ \ignorespaces}}% defend against questionable usage
  \edef\@tempa{%
    \@nx\markboth{\the\toks4
     \@nx{\the\toks@}}{\the\@temptokena}}%
  \@tempa
  \endgroup
  \c@footnote\z@
  \def\do##1{\let##1\relax}%
  \do\maketitle \do\@maketitle \do\title \do\@xtitle \do\@title
  \do\@pretitle \do\@subtitle
  \do\author \do\@xauthor \do\address \do\@xaddress
  \do\email \do\@xemail \do\curraddr \do\@xcurraddr
  \do\commby \do\@commby
  \do\dedicatory \do\@dedicatory \do\thanks \do\thankses
  \do\keywords \do\@keywords \do\subjclass \do\@subjclass
}
\def\@maketitle@hook{\global\let\@maketitle@hook\@empty}
\def\@maketitle{%
  \normalfont\normalsize
  \let\@makefnmark\relax  \let\@thefnmark\relax
  \ifx\@empty\@subjclass\else \ifSubjClassinTitle \else\@footnotetext{\@setsubjclass}\fi\fi
  \ifx\@empty\@keywords\else \ifKeywordsinTitle \else\@footnotetext{\@setkeywords}\fi\fi
  \ifx\@empty\thankses\else\@footnotetext{%
    \def\par{\let\par\@par}\@setthanks}\fi
  \@mkboth{\@nx\shortauthors}{\@nx\shorttitle}%
   \FirstPageTopSkip
\if@twocolumn \else
\def\@fnsymbol##1{\ifcase##1\or\ast\or\ast\ast\or\ast\ast\ast%
   \or \dagger\or \ddagger\or
   \mathchar "278\or \mathchar "27B\or \|\or **\or \dagger\dagger
   \or \ddagger\ddagger \else\@ctrerr\fi\relax}
\renewcommand\thefootnote{\@fnsymbol\c@footnote}%
\def\@makefnmark{$^{\@thefnmark}$\kern -2pt}%

\def\@makefntext{\@makefnmark\kern -3pt}
\fi
  \setlength{\TitleWidth}{\linewidth}
  \addtolength{\TitleWidth}{-\TitleSkip}
  \if@authoratbotitle\ifx\@empty\authors \else \@setauthors \fi\fi
  \ifx\@empty\@pretitle\else\@setpretitle\fi%
  \@settitle%
  \ifx\@empty\@subtitle\else\@setsubtitle\fi%
  \if@authoratbotitle\else\ifx\@empty\authors \else \@setauthors \fi\fi
  \ifx\@empty\addresses\else
     \ifAddressinTitle
\ifAddressinTitle
        \headelem{0\baselineskip}{1\baselineskip}{%
\ifExcludeAddressFromSkip\z@\else\TitleSkip\fi}{\z@}           
{\normalfont}{\@setaddresses}  \fi\fi
  \ifDatesinTitle
     \headelem{0\baselineskip}{1\baselineskip}{\TitleSkip}{\z@}
        {\dt@font}{\@setdate}
  \fi
  \if@abstreotitle\else
  \ifx\@empty\@dedicatory
  \else
    %\baselineskip18\p@
     \headelem{.5\baselineskip}{0\baselineskip}{\TitleSkip}{\z@}
        {\dc@font}{\@dedicatory}
  \fi
  \@setabstract\fi
  \ifx\@empty\@keywords\else \ifKeywordsinTitle\@setkeywords\fi\fi
  \ifx\@empty\@subjclass\else \ifSubjClassinTitle\@setsubjclass\fi\fi
  \if@abstreotitle
  \ifx\@empty\@dedicatory
  \else
    %\baselineskip18\p@
     \headelem{0.5\baselineskip}{0\baselineskip}{\TitleSkip}{\z@}
        {\dc@font}{\@dedicatory}
  \fi
  \@setabstract\fi
  \normalsize
  \if@titlepage
    \newpage
  \else
    \vskip\BeforeMainTextSkip
    \dimen@34\p@ \advance\dimen@-\baselineskip
    \vskip\dimen@\relax
  \fi
} % end \@maketitle
\AtBeginDocument{%
  \@ifundefined{publname}{%
    \let\publname\@empty
    \let\@serieslogo\@empty
  }{%
    \def\@serieslogo{\article@logo}%
  }%
}
\AtBeginDocument{%
  \@ifundefined{volinfo}{%
    \def\volinfo{%
      Volume \current@volume, Number \number0\current@issue
      \if\@printyear , \current@month\ \current@year\fi
    }%
  }{}%
}
\def\@printyear{TF}% boolean false
\def\Volume#1{\def\current@volume{#1}} \def\current@volume{0}
\def\Issue#1{\def\current@issue{#1}} \def\current@issue{0}
    \def\Copyrightissue#1{\ClassWarning{\@classname}{Copyrightissue is no
    longer used.}}
\def\Month#1{\def\current@month{#1}} \def\current@month{0}
\def\Year#1{\def\current@year{#1}} \def\current@year{0}
\newcount\numa \newcount\numb
\newcommand{\four@digits}[1]{%
  \ifnum#1<10 000\else
  \ifnum#1<100 00\else
  \ifnum#1<1000 0\else
  \ifnum#1<10000 \else
  \fi\fi\fi\fi\number#1}
\def\pagespan#1#2{
  \setcounter{page}{#1}%
  \ifnum\c@page<\z@ \pagenumbering{roman}\setcounter{page}{-#1}\fi
  \def\start@page{#1}\def\end@page{#2}
}
\if@autolastp\pagespan{1}{}\else\pagespan{000}{000}\fi
\AtBeginDocument{%
  \@ifundefined{pageinfo}{%
    \def\pageinfo{%
      \ifnum\start@page=\z@
        000--000
      \else
        \ifx\start@page\end@page
          \start@page
        \else
          \start@page\,--\,\end@page
        \fi
      \fi}%
  }{}%
}
\AtEndDocument{
   \ifx\copyrightyear\current@year\relax\else
    \ClassWarning{\@classname}{copyrightyear \copyrightyear\space in
    copyrightinfo differs from currentyear \current@year\space in Year
    of issueinfo}
    \fi}
\newcommand{\keywordsname}{Key words}
\newcommand{\subjclassname}{Subject classification}
\@xp\let\csname subjclassname@1991\endcsname \subjclassname
\@namedef{subjclassname@2000}{%
  \textup{2000} Mathematics Subject Classification}
\@namedef{subjclassname@pacs}{PACS}
\@namedef{subjclassname@msc2000}{MSC (2000)}
\@namedef{subjclassname@AMS}{AMS}
\def\@tempb{article}
\ifx\@classname\@tempb
  \newcommand{\datename}{\textit{Date}:}
\else
  \newcommand{\datename}{Received by the editors}
\fi
\def\@setpretitle{%
\headelem{0\baselineskip}{1.5\baselineskip}{%
\ifExcludeTitleFromSkip\z@\else\TitleSkip\fi}{\z@}
{\pt@font}{\@pretitle}
}
\def\@settitle{%
\headelem{0\baselineskip}{1\baselineskip}{%
\ifExcludeTitleFromSkip\z@\else\TitleSkip\fi}{\z@}
{\t@font}{\@title}
}
\def\@setsubtitle{%
\headelem{0\baselineskip}{1\baselineskip}{%
\ifExcludeTitleFromSkip\z@\else\TitleSkip\fi}{\z@}
{\st@font}{\@subtitle}
}
\let\@pretitle=\@empty
\let\@subtitle=\@empty
\def\@setauthors{%
\andify\authors
\headelem{0\baselineskip}{\aa@skip\baselineskip}{%
\ifExcludeAuthorFromSkip\z@\else\TitleSkip\fi}{\z@}
{\a@font}{\authors}
}
\def\Receiveddate#1{\def\received@date{#1}}%
\let\received@date\@empty
\def\Reviseddate#1{\def\revised@date{#1}}%
\let\revised@date\@empty
\def\Accepteddate#1{\def\accepted@date{#1}}%
\let\accepted@date\@empty
\def\@setsubjclass{%
  \ifSubjClassinTitle\noindent\hfill\parbox[t]{\TitleWidth}%
  {\scl@font{\scll@font \subjclassname}\enspace%
  \@subjclass}%
  \vskip\asc@skip\baselineskip
  \else%
  {\scl@font{\scll@font \subjclassname}\enspace%
  \@subjclass}\fi}
\def\@setkeywords{%
  \ifKeywordsinTitle\noindent\hfill\parbox[t]{\TitleWidth}%
  {\kw@font{\kwl@font \keywordsname\kw@punct}\enspace \hangindent 3.8pc\@keywords}
  \vskip\akw@skip\baselineskip
  \else%
  {{\itshape \keywordsname.}\enspace \@keywords\@addpunct.}\fi}
\def\@setthanks{\def\thanks##1{\par##1\@addpunct.}\thankses}
\newbox\abstractbox
\newenvironment{abstract}{%
  \ifx\maketitle\relax
    \ClassWarning{\@classname}{Abstract should precede
      \protect\maketitle\space in WILEY documentclasses; reported}%
  \fi
  \global\setbox\abstractbox=\vtop \bgroup
    \let\@makefnmark\relax  \let\@thefnmark\relax
    \abstr@font
    \list{}{\labelwidth\z@
      \leftmargin\AbstractLeftMargin \rightmargin\AbstractRightMargin
      \listparindent\normalparindent \itemindent\z@
      \parsep\z@ \@plus\p@
      \let\fullwidthdisplay\relax
    }%
    \ifx\@empty\abstractname\item[]%
    \else%
      \ifEmbeddedAbstractHead
      \item[\hskip\labelsep\bfseries\abstractname]
      \else
      \item[]
      \fi%
    \fi%
}{%
  \endlist\egroup
  \ifx\@setabstract\relax \@setabstracta \fi
}
\def\@setabstract{\@setabstracta \global\let\@setabstract\relax}
\def\@setabstracta{%
  \ifvoid\abstractbox
  \else
    \BeforeAbstractSkip \advance\skip@-\lastskip
    \advance\skip@-\baselineskip \vskip\skip@
    \ifEmbeddedAbstractHead
    \else
    \if@noabstractname
    \else
    \vspace{1\baselineskip}%
    {\noindent\hskip\TitleSkip\abstrl@font\abstractname\par\nobreak}
    \vskip -12\p@%
    \fi\fi
    \box\abstractbox
    \prevdepth\z@ % because \abstractbox is a vtop
    \fi
    \if@abstractcopyright
    \if@finallayout
     {\normalfont\fontsize{6}{7\p@}\normalfont \hfill
     \copyright\ \copyrightyear\ \copyrightholder\par}
    \else
     {\normalfont\fontsize{6}{7\p@}\normalfont \hfill
     Copyright line will be provided by the publisher\par}
    \fi\fi
}
\def\titlepage{%
  \clearpage
  \thispagestyle{empty}\setcounter{page}{0}}
\def\endtitlepage{\newpage}
\if@separatedheads
\setcounter{secnumdepth}{3}
\else
\setcounter{secnumdepth}{0}
\fi
\newcounter {part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\if@trailingperiod
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thesection {\@arabic\c@section.}
\renewcommand\thesubsection   {\thesection\@arabic\c@subsection.}
\renewcommand\thesubsubsection{\thesubsection\@arabic\c@subsubsection.}
\renewcommand\theparagraph    {\thesubsubsection\@arabic\c@paragraph.}
\renewcommand\thesubparagraph {\theparagraph\@arabic\c@subparagraph.}
\fi
\newcommand\part{%
   \if@noskipsec \leavevmode \fi
   \par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >\m@ne
       \Large\bfseries \partname\nobreakspace\thepart
       \par\nobreak
     \fi
     \huge \bfseries #2%
     \markboth{}{}\par}%
    \nobreak
    \vskip 3ex
    \@afterheading}
\def\@spart#1{%
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \huge \bfseries #1\par}%
     \nobreak
     \vskip 3ex
     \@afterheading}
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
      \if@trailingperiod
        \protect\numberline{\csname the#1\endcsname.}%
      \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      \fi
      #8}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
        \if@trailingperiod
            \protect\numberline{\csname the#1\endcsname.}%
        \else
            \protect\numberline{\csname the#1\endcsname}%
        \fi
        \fi
        #8}}%
  \fi
  \@xsect{#5}}
\newcommand\specialsection{\@startsection {section}{10}{\h@indent}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\s@font}}
\if@separatedheads
\newcommand\section{\@startsection {section}{1}{\h@indent}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {1.8ex \@plus.2ex}%
                                   {\s@font}}
\newcommand\subsection{\@startsection{subsection}{2}{\h@indent}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.0ex \@plus .2ex}%
                                     {\ss@font}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\h@indent}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.0ex \@plus .2ex}%
                                     {\ss@font}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\pg@font}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\spg@font}}
\else% heads are run-in
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {-1em}%
                                   {\s@font\normalsize}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {-1em}%
                                     {\ss@font\normalsize}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {-1em}%
                                     {\sss@font\normalsize}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\pg@font\normalsize}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\spg@font\normalsize}}
\fi
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {1.75em}
\setlength\leftmarginiii {1.5em}
\setlength\leftmarginiv  {1.25em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
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
%% End of size option 10pt
\widowpenalty=10000
\clubpenalty=10000
\brokenpenalty=10000
\newdimen\linespacing
\lineskip=1pt \lineskiplimit=1pt
\normallineskip=1pt \normallineskiplimit=1pt
\let\baselinestretch=\@empty
\newdimen\normalparindent
\normalparindent=12pt
\parindent=\normalparindent
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
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\def\trivlist{\parsep\parskip\@nmbrlistfalse
  \@trivlist \labelwidth\z@ \leftmargin\z@
  \itemindent\z@
  \let\@itemlabel\@empty
  \def\makelabel##1{\upshape##1}}
\renewenvironment{enumerate}{%
  \ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne
      \edef\@enumctr{enum\romannumeral\the\@enumdepth}\list
      {\csname label\@enumctr\endcsname}{\usecounter
        {\@enumctr}\def\makelabel##1{\hss\llap{\upshape##1}}}\fi
}{%
  \endlist
}
\let\endenumerate=\endlist % for efficiency
\renewenvironment{itemize}{%
  \ifnum\@itemdepth>3 \@toodeep
  \else \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \list{\csname\@itemitem\endcsname}%
      {\def\makelabel##1{\hss\llap{\upshape##1}}}%
  \fi
}{%
  \endlist
}
\let\enditemize=\endlist % for efficiency
\newcommand{\descriptionlabel}[1]{\hspace\labelsep \upshape\bfseries #1:}
\newenvironment{description}{\list{}{%
  \advance\leftmargini6\p@ \itemindent-12\p@
  \labelwidth\z@ \let\makelabel\descriptionlabel}%
}{
  \endlist
}
\let\enddescription=\endlist % for efficiency
\let\upn=\textup
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\AtBeginDocument{
 \def\captionsenglish{%
   \def\ackname{Acknowledgements}%
   \def\bibname{Bibliography}
   \def\claimname{Claim}%
   \def\conjecturename{Conjecture}%
   \def\corollaryname{Corollary}%
   \def\definitionname{Definition}%
   \def\examplename{Example}%
   \def\exercisename{Exercise}%
   \def\figurename{Figure}%
   \def\keywordsname{Key words}
   \def\lemmaname{Lemma}%
   \def\listfigurename{List of Figures}%
   \def\listtablename{List of Tables}%
   \def\noteaddname{Note added in proof}%
   \def\notename{Note}%
   \def\partname{Part}%
   \def\problemname{Problem}%
   \def\proofname{P\,r\,o\,o\,f}%
   \def\propertyname{Property}%
   \def\propositionname{Proposition}%
   \def\questionname{Question}%
   \def\refname{References}%
   \def\remarkname{Remark}%
   \def\solutionname{Solution}%
   \def\tablename{Table}%
   \def\theoremname{Theorem}%
   \def\conjecturename{Conjecture}%
   \def\axiomname{Axiom}%
   \def\notationname{Notation}%
   \renewcommand{\received@name}{Received}
   \renewcommand{\revised@name}{, revised}
   \renewcommand{\accepted@name}{, accepted}
   \renewcommand{\publishedonline@name}{Published online}
   \def\andname{and}%
   \def\and{\unskip{ }and \ignorespaces}
}
 \let\captionsUSenglish=\captionsenglish
 \let\captionsamerican=\captionsUSenglish
 \let\captionsbritish=\captionsenglish
 \let\captionsUKenglish=\captionsenglish
 \def\captionsgerman{%
   \def\ackname{Danksagung}%
   \def\bibname{Bibliographie}
   \def\claimname{Behauptung}%
   \def\conjecturename{Hypothese}%
   \def\corollaryname{Korollar}%
   \def\definitionname{Definition}%
   \def\examplename{Beispiel}%
   \def\exercisename{\"Ubung}%
   \def\figurename{Abb.}%
   \def\keywordsname{Schl\"usselw\"orter}
   \def\lemmaname{Lemma}%
   \def\listfigurename{Abbildungsverzeichnis}%
   \def\listtablename{Tabellenverzeichnis}%
   \def\noteaddname{Nachtrag}%
   \def\notename{Anmerkung}%
   \def\partname{Teil}%
   \def\problemname{Problem}%
   \def\proofname{B\,e\,w\,e\,i\,s}%
   \def\propertyname{Eigenschaft}%
   \def\propositionname{Proposition}%
   \def\questionname{Frage}%
   \def\refname{Literatur}%
   \def\remarkname{Anmerkung}%
   \def\solutionname{L\"osung}%
   \def\tablename{Tabelle}%
   \def\theoremname{Satz}%
   \def\axiomname{Axiom}%
   \def\conjecturename{Vermutung}%
   \def\notationname{Notation}%
   \renewcommand{\received@name}{Eingegangen am}
   \renewcommand{\revised@name}{, revidierte Fassung vom}
   \renewcommand{\accepted@name}{, angenommen am}
   \renewcommand{\publishedonline@name}{Online publiziert am}
   \def\andname{und}%
   \def\and{\unskip{ }und \ignorespaces}
   \renewcommand{\andify}{%
     \nxandlist{\unskip, }{\unskip{} {\and@font \andname}~}{\unskip{} {\and@font \andname}~}}
   \renewcommand{\normalandify}{%
     \nxandlist{\unskip, }{\unskip{} {\normalfont \andname}~}{\unskip{} {\normalfont \andname}~}}
}
 \let\captionsaustrian=\captionsgerman
 \let\captionsngerman=\captionsgerman
 \def\captionsfrench{%
   \def\ackname{Remerciements}%
   \def\claimname{Pr\'etention}%
   \def\conjecturename{Hypoth\`ese}%
   \def\corollaryname{Corollaire}%
   \def\definitionname{D\'efinition}%
   \def\examplename{Exemple}%
   \def\exercisename{Exercice}%
   \def\figurename{Fig.}%
   \def\keywordsname{Mots-cl\'e}
   \def\lemmaname{Lemme}%
   \def\listfigurename{Liste des figures}%
   \def\listtablename{Liste des tables}%
   \def\noteaddname{Note ajout\'ee \`a l'\'epreuve}%
   \def\notename{Remarque}%
   \def\partname{Partie}%
   \def\problemname{Probl\`eme}%
   \def\proofname{P\,r\,e\,u\,v\,e}%
   \def\propertyname{Caract\'eristique}%
   \def\propositionname{Proposition}%
   \def\questionname{Question}%
   \def\refname{References}%
   \def\remarkname{Remarque}%
   \def\solutionname{Solution}%
   \def\tablename{Tableau}%
   \def\theoremname{Th\'eor\`eme}%
   \def\axiomname{Axiom}%
   \def\conjecturename{Conjecture}%
   \def\notationname{Notation}%
   \renewcommand{\received@name}{Received}
   \renewcommand{\revised@name}{, revised}
   \renewcommand{\accepted@name}{, accepted}
   \renewcommand{\publishedonline@name}{Published online}
   \def\andname{et}%
   \def\and{\unskip{ }et \ignorespaces}
   \renewcommand{\andify}{%
     \nxandlist{\unskip, }{\unskip{} {\and@font \andname}~}{\unskip{} {\and@font \andname}~}}
   \renewcommand{\normalandify}{%
     \nxandlist{\unskip, }{\unskip{} {\normalfont \andname}~}{\unskip{} {\normalfont \andname}~}}
}
  \def\dateenglish{\def\today{\number\day/\number\month/\number\year}}
  \def\dateUSenglish{\def\today{\number\month/\number\day/\number\year}}
  \let\datebritish=\dateenglish
  \let\dateUKenglish=\dateenglish
  \let\dateamerican=\dateUSenglish
  \def\dategerman{\def\today{\number\day.\,\number\month.\,\number\year}}
  \let\dateaustrian=\dategerman
  \let\datengerman=\dategerman
  \let\datefrench=\dategerman
 \captionsenglish
 \dateenglish
 \ifx\languagename\undefined
  \ClassWarningNoLine{\@classname}{\string\languagename\space not
    defined, using \string\language.\MessageBreak
    You should use a compatible language package\MessageBreak
    (e.g. `Babel', `german', `french', ...)}
  \ifx\l@american\undefined\else\ifnum\language=\l@american
  \captionsamerican
  \dateamerican
  \fi\fi
  \ifx\l@british\undefined\else\ifnum\language=\l@british
  \captionsbritish
  \datebritish
  \fi\fi
  \ifx\l@UKenglish\undefined\else\ifnum\language=\l@UKenglish
  \captionsUKenglish
  \dateUKenglish
  \fi\fi
  \ifx\l@USenglish\undefined\else\ifnum\language=\l@USenglish
  \captionsUSenglish
  \dateUSenglish
  \fi\fi
  \ifx\l@austrian\undefined\else\ifnum\language=\l@austrian
  \captionsaustrian
  \dateaustrian
  \fi\fi
  \ifx\l@german\undefined\else\ifnum\language=\l@german
  \captionsgerman
  \dategerman
  \fi\fi
  \ifx\l@ngerman\undefined\else\ifnum\language=\l@ngerman
  \captionsngerman
  \datengerman
  \fi\fi
  \ifx\l@french\undefined\else\ifnum\language=\l@french
  \captionsfrench
  \datefrench
  \fi\fi
  \ifx\l@frenchb\undefined\else\ifnum\language=\l@frenchb
  \captionsfrench
  \datefrench
  \fi\fi
 \fi
}
\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \gdef\thesection{\@Alph\c@section}
}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand \theequation {\@arabic\c@equation}
\newcounter{figure}
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{vchfigure}[1][tbp]
               {\begin{figure}[#1]\leftskip=\vch@skip}
               {\end{figure}}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable{\hspace*{10pt}}\hskip-10pt}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{vchtable}[1][tbp]
               {\begin{table}[#1]\leftskip=\vch@skip}
               {\end{table}}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{6\p@}
\setlength\belowcaptionskip{6\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
   #1: #2\par
  \else
    \global \@minipagefalse
\hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip
}
\newlength\captionwidth \captionwidth=\hsize
\def\vchcaption{\refstepcounter\@captype \@dblarg{\@vchcaption\@captype}}
\long\def\@vchcaption#1[#2]#3{%
  \par
  \addcontentsline{\csname ext@#1\endcsname}{#1}%
    {\protect\numberline{\csname the#1\endcsname}{\ignorespaces #2}}%
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makevchcaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}
  \newlength{\vch@capl}
\long\def\@makevchcaption#1#2{%
  \vskip\abovecaptionskip
  \setlength{\vch@capl}{\hsize}
  \addtolength{\vch@capl}{-\vch@skip}%
    \rule{\vch@skip}{0mm}%
\parbox[t]{\vch@capl}{{\captionlabelfont #1\captionlabeldelim}{\captionfont\enspace #2}}%
  \vskip\belowcaptionskip
}
\IfFileExists{caption2.sty}%
  {\RequirePackage[nooneline,small,bf]{caption2}\@captiontwopacktrue}%
  {\typeout{Can't find caption2.sty -- will use normal caption layout
  for oneline caption.}\@captiontwopackfalse}
\IfFileExists{sidecap.sty}{\RequirePackage[rightcaption]{sidecap}}%
   {\typeout{Can't find sidecap.sty -- will use normal caption}}%
\AtBeginDocument{\newif\ifsidecap
 \ifx\SC@FLOAT\undefined
  \sidecapfalse
  \typeout{Can't find sidecap.sty -- will use normal caption}%
  % sidecap.sty is not loaded
\else
 \sidecaptrue % sidecap.sty is loaded
  \typeout{sidecap.sty found -- will use sidecaption}%
\fi
}
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
\newcommand\tableofcontents{%
    \@starttoc{toc}\contentsname%
    }
\def\@startsection#1#2#3#4#5#6{%
 \if@noskipsec \leavevmode \fi
 \par \@tempskipa #4\relax
 \@afterindenttrue
 \ifdim \@tempskipa <\z@ \@tempskipa -\@tempskipa \@afterindentfalse\fi
 \if@nobreak \everypar{}\else
     \addpenalty\@secpenalty\addvspace\@tempskipa\fi
 \@ifstar{\@dblarg{\@sect{#1}{\@m}{#3}{#4}{#5}{#6}}}%
         {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}%
}
\newswitch{toc}
\newswitch{lof}
\newswitch{lot}
\newcommand\contentsnamefont{\s@font}
\def\@starttoc#1#2{\begingroup
  \setTrue{#1}%
  \par\removelastskip\vskip\z@skip
  \@startsection{}{\@M}{\z@}{-3.5ex \@plus -1ex \@minus -.2ex}%
    {2.3ex \@plus.2ex}{\contentsnamefont}{#2}%
  \ifx\contentsname#2%
  \else \addcontentsline{toc}{section}{#2}\fi
  \makeatletter
  \@input{\jobname.#1}%
  \if@filesw
    \@xp\newwrite\csname tf@#1\endcsname
    \immediate\@xp\openout\csname tf@#1\endcsname \jobname.#1\relax
  \fi
  \global\@nobreakfalse \endgroup
  \addvspace{32\p@\@plus14\p@}%
  \let\tableofcontents\relax
}
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty\@secpenalty
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
       \if@compatibility
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
      \fi
    \endgroup
  \fi}
\newcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
\newcommand*\l@[2]{%
  \ifnum \c@tocdepth <\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
\newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures{%
%    \section*{\listfigurename}%
    \@starttoc{lof}\listfigurename%
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
%    \section*{\listtablename}%
    \@starttoc{lot}\listtablename%
    }
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\section*{\refname}%
      \@mkboth{\refname}{\refname}\bib@size%
      \normalfont\bib@size
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \parsep -2.5\p@ \@plus\p@ \@minus\p@
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newenvironment{acknowledgement}{\begin{small}\paragraph{\ackname}}%
                           {\end{small}}
\newenvironment{acknowledgements}{\begin{small}\paragraph{\ackname}}%
                            {\end{small}}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\section*{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\def\footnoterule{\kern-.4\p@
        \hrule\@width 5pc\kern11\p@\kern-\footnotesep}
\def\@makefnmark{%
  \leavevmode
  \raise.9ex\hbox{\fontsize\sf@size\z@\normalfont\@thefnmark}%
}
\def\@makefntext{\indent\@makefnmark}%
\long\def\@footnotetext#1{%
  \insert\footins{%
    \normalfont\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep \splitmaxdepth \dp\strutbox
    \floatingpenalty\@MM \hsize\columnwidth
    \@parboxrestore \parindent\normalparindent \sloppy
    \protected@edef\@currentlabel{%
      \csname p@footnote\endcsname\@thefnmark}%
    \@makefntext{\enspace%
    \rule\z@\footnotesep\ignorespaces#1\unskip\strut\par}%
}}
\hfuzz=1pt \vfuzz=\hfuzz
\def\sloppy{\tolerance9999 \emergencystretch 3em\relax}
\def\nonbreakingspace{\unskip\nobreak\ \ignorespaces}
\def~{\protect\nonbreakingspace}
\def\@biblabel#1{\@ifnotempty{#1}{[#1]}}
\def\@cite#1#2{{%
  \m@th\upshape\mdseries[{#1\if@tempswa, #2\fi}]}}
\@ifundefined{cite }{%
  \expandafter\let\csname cite \endcsname\cite
  \edef\cite{\@nx\protect\@xp\@nx\csname cite \endcsname}%
}{}
\def\fullwidthdisplay{\displayindent\z@ \displaywidth\columnwidth}
\edef\@tempa{\noexpand\fullwidthdisplay\the\everydisplay}
\everydisplay\expandafter{\@tempa}
\DeclareRobustCommand\textprime{\leavevmode
  \raise.8ex\hbox{\check@mathfonts\the\scriptfont2 \char48 }}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\refname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Fig.}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{Appendix}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0.4\p@}
\def\calclayout{%
\addtolength{\textheight}{-\topskip}
\newcounter{tempc}
\setcounter{tempc}{\textheight}
\newcounter{tempcc}
\setcounter{tempcc}{\baselineskip}
\setcounter{tempc}{\value{tempc}/\value{tempcc}}
\setlength{\textheight}{\baselineskip*\value{tempc}+\topskip}
  \oddsidemargin\paperwidth
  \advance\oddsidemargin -\textwidth
  \divide\oddsidemargin\tw@
  \ifdim\oddsidemargin<.5truein \oddsidemargin.5truein \fi
  \advance\oddsidemargin -1truein
  \evensidemargin\oddsidemargin
  \topmargin\paperheight
  \advance\topmargin -\textheight
  \advance\topmargin -\headheight
  \advance\topmargin -\headsep
  \divide\topmargin\tw@
  \ifdim\topmargin<.5truein \topmargin.5truein \fi
  \advance\topmargin -1truein\relax
}
\InputIfFileExists{w-art.cfg}{}{%
  \calclayout % initialize
  \pagenumbering{arabic}%
  \pagestyle{headings}%
  \thispagestyle{plain}%
}
\pagestyle{headings}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\if@referee
   \makereferee
\fi
\if@autolastp\AtEndDocument{\writelastpagenumber}\fi
\endinput
%%
%% End of file `w-art.cls'.

