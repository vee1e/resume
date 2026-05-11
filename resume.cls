% Resume Class File
% Based on template by Trey Hunner (2010), modified by LaTeXTemplates.com
% Distributed as-is, without warranty.

\ProvidesClass{resume}[2010/07/10 v1.0 Resume class]

\LoadClass[10.95pt,letterpaper]{article}

\usepackage[parfill]{parskip}
\usepackage{array}
\usepackage{accsupp}

\pagestyle{empty}

%--- Name & Contact Header ---

\def\name#1{\def\@name{#1}}
\def\@name{}

\def\addressSep{\hspace{1.2em}}

\let\@contactline\relax
\def\address#1{\def\@contactline{#1}}

\def\printaddress#1{%
  \begingroup
    \def\\{\addressSep}%
    \centerline{#1}%
  \endgroup
  \par\smallskip
}

\def\printname{%
  \begingroup
    \hfil{\BeginAccSupp{ActualText=\@name}\MakeUppercase{\huge\bf\@name}\EndAccSupp{}}\hfil
    \smallskip\break
  \endgroup
}

\let\ori@document=\document
\renewcommand{\document}{%
  \ori@document
  \printname
  \@ifundefined{@contactline}{}{\printaddress{\@contactline}}%
}

%--- Section ---

\newenvironment{rSection}[1]{%
  \par\vspace{0.5em}
  \noindent\BeginAccSupp{ActualText=#1}\MakeUppercase{\textbf{#1}}\EndAccSupp{}\par
  \vspace{0.4em}%
  \hrule
  \vspace{0em}%
}{%
  \par
}

%--- Subsection (work experience entry) ---

\newenvironment{rSubsection}[4]{%
  % #1=title, #2=dates, #3=subtitle, #4=location
  {\parfillskip=0pt
    \noindent{\bf #1} \hfill {#2}%
    \if\relax\detokenize{#3}\relax\else
      \par\vspace{-\parskip}\noindent{#3} \hfill {#4}%
    \fi
  \par}%
  \begin{list}{-}{\leftmargin=1em \itemindent=0em \topsep=-0.3em \partopsep=0pt}
    \itemsep -0.5em
}{%
  \end{list}
}
