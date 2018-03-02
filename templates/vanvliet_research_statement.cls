\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{research_statement}[2018/02/26 Theme for research statements]
\LoadClassWithOptions{article}

% Styles common to multiple templates
\RequirePackage{vanvliet_common}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fonts

% Emphesized text is bold
\renewcommand{\emph}[1]{\textbf{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bibliography

\RequirePackage[american]{babel}
\RequirePackage{csquotes}
\usepackage{babel}
\usepackage{csquotes}
\MakeOuterQuote{"} % "
\RequirePackage[style=apa, backend=biber, maxbibnames=99, 
                doi=true, isbn=false, url=false, eprint=false,
                natbib=true]{biblatex}
\DeclareLanguageMapping{american}{american-apa}

\let\oldcite\cite
\renewcommand{\cite}[1]{~(\oldcite{#1})}

% Enable underlining specific authors in citations and the bibliography
\renewcommand*{\mkbibnamefamily}[1]{%
  \ifitemannotation{highlight}
    {\underline{#1}}
    {#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Headers and footers

% Title formatting
\makeatletter
\def\maketitle{
	\textbf{\large\@title}\hspace{2cm}\@author
}
\makeatother
