\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{doomnote}[<2022\-02\-22> More advanved LaTeX class for notetaking.]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[usenames,dvipsnames,table]{xcolor}
\RequirePackage{import}
\RequirePackage{pdfpages}

\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{transparent}
\RequirePackage{tcolorbox}

\RequirePackage[margin=1.25in, top=0.75in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{scalerel}
\RequirePackage{stackengine}

\RequirePackage{booktabs}
\RequirePackage{hyperref}
\RequirePackage{enumitem}

\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{thmtools}

\usetikzlibrary{shapes, backgrounds, karnaugh}

\pagestyle{fancy}
\newcommand\lecnum{Note}
\headheight .75in
\headsep .25in
\lhead{\lecnum}
\chead{\textbf{\boldmath{\Large \@title}}}
\rhead{\footnotesize \@date}

\hypersetup{
  colorlinks,
  linkcolor={red!50!black},
  citecolor={blue!50!black},
  urlcolor={blue!80!black}
}

\newenvironment{compitemize}
  {\begin{itemize}[noitemsep,topsep=0pt,parsep=0pt,partopsep=0pt]}
  {\end{itemize}}

\theoremstyle{definition}
\declaretheoremstyle[
    headfont=\bfseries\sffamily\color{ForestGreen!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=ForestGreen, backgroundcolor=ForestGreen!5,
    }
]{thmgreenbox} % Theorem Indented Box w Green Background

\declaretheoremstyle[
    headfont=\bfseries\sffamily\color{NavyBlue!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=NavyBlue, backgroundcolor=NavyBlue!5,
    }
]{thmbluebox}

\declaretheoremstyle[
    headfont=\bfseries\sffamily\color{RawSienna!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=RawSienna, backgroundcolor=RawSienna!5,
    }
]{thmredbox}

\declaretheoremstyle[
    headfont=\bfseries\sffamily\color{RawSienna!70!black}, bodyfont=\normalfont,
    numbered=no,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=RawSienna, backgroundcolor=RawSienna!1,
    },
    qed=\qedsymbol
]{thmproofbox}

\declaretheoremstyle[
    headfont=\bfseries\sffamily\color{NavyBlue!70!black}, bodyfont=\normalfont,
    numbered=no,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=NavyBlue, backgroundcolor=NavyBlue!1,
    },
]{thmexplanationbox}

\declaretheoremstyle[
    headfont=\bfseries\sffamily\color{NavyBlue!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=NavyBlue
    }
]{thmblueline}

\declaretheorem[style=thmgreenbox, name=Definition]{definition}
\declaretheorem[style=thmbluebox, numbered=no, name=Example]{eg}
\declaretheorem[style=thmredbox, name=>, numbered=no]{notabene}
\declaretheorem[style=thmredbox, name=Proposition]{prop}
\declaretheorem[style=thmredbox, name=Theorem]{theorem}
\declaretheorem[style=thmredbox, name=Lemma]{lemma}
\declaretheorem[style=thmredbox, numbered=no, name=Corollary]{corollary}
\declaretheorem[style=thmproofbox, name=Proof]{replacementproof}
\renewenvironment{proof}[1][\proofname]{\vspace{-10pt}\begin{replacementproof}}{\end{replacementproof}}

\declaretheorem[style=thmexplanationbox, name=Proof]{tmpexplanation}
\newenvironment{explanation}[1][]{\vspace{-10pt}\begin{tmpexplanation}}{\end{tmpexplanation}}

\declaretheorem[style=thmblueline, numbered=no, name=Remark]{remark}
\declaretheorem[style=thmblueline, numbered=no, name=Note]{note}

\tcbuselibrary{breakable}
\newenvironment{popout}[1]{\begin{tcolorbox}[
    arc=0mm,
    colback=white,
    colframe=green!60!black,
    title=#1,
    fonttitle=\sffamily,
    breakable
]}{\end{tcolorbox}}

\AfterEndEnvironment{definition}{\noindent\ignorespaces}
\AfterEndEnvironment{eg}{\noindent\ignorespaces}
\AfterEndEnvironment{prop}{\noindent\ignorespaces}
\AfterEndEnvironment{theorem}{\noindent\ignorespaces}
\AfterEndEnvironment{lemma}{\noindent\ignorespaces}
\AfterEndEnvironment{corollary}{\noindent\ignorespaces}
\AfterEndEnvironment{replacementproof}{\noindent\ignorespaces}
\AfterEndEnvironment{tmpexplanation}{\noindent\ignorespaces}
\AfterEndEnvironment{remark}{\noindent\ignorespaces}
\AfterEndEnvironment{note}{\noindent\ignorespaces}
\AfterEndEnvironment{popout}{\noindent\ignorespaces}

\newcommand\equalhat{\mathrel{\stackon[1.5pt]{=}{\stretchto{
      \scalerel*[\widthof{=}]{\wedge}{\rule{1ex}{3ex}}}{0.5ex}}}}

\graphicspath{{./figures/}}
\newcommand{\incfig}[1]{
  \def\svgwidth{\textwidth}
  \import{./figures/}{#1.pdf_tex}
}
\newcommand{\incimg}[1]{\par \includegraphics[width=\textwidth]{#1}}
