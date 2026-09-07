% arXiv LaTeX template

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{main}[2026/07/01 arXiv LaTeX template]
\LoadClassWithOptions{article}

% Page and typography
\RequirePackage[a4paper,margin=2.2cm,columnsep=0.7cm]{geometry}
\RequirePackage{textcomp}
\RequirePackage{microtype}
\RequirePackage{placeins}
\RequirePackage{hyphenat}
\RequirePackage{setspace}
\RequirePackage{lineno}
\RequirePackage{parskip}
\RequirePackage{etoolbox}
\RequirePackage{iftex}
\ifPDFTeX
  \RequirePackage[T1]{fontenc}
  \RequirePackage[utf8]{inputenc}
  \newcommand{\saModernFonts}{%
    \renewcommand*\encodingdefault{T1}\fontencoding{T1}\selectfont
    \renewcommand*\rmdefault{lmr}%
    \renewcommand*\sfdefault{phv}%
    \renewcommand*\ttdefault{cmvtt}%
  }
  \newcommand{\saTimesFonts}{%
    \renewcommand*\encodingdefault{T1}\fontencoding{T1}\selectfont
    \renewcommand*\rmdefault{qtm}%
    \renewcommand*\sfdefault{qhv}%
    \renewcommand*\ttdefault{qcr}%
  }
  \newcommand{\saPalatinoFonts}{%
    \renewcommand*\encodingdefault{T1}\fontencoding{T1}\selectfont
    \renewcommand*\rmdefault{qpl}%
    \renewcommand*\sfdefault{qhv}%
    \renewcommand*\ttdefault{qcr}%
  }
  \newcommand{\saLibertinusFonts}{%
    \renewcommand*\encodingdefault{T1}\fontencoding{T1}\selectfont
    \IfFileExists{LibertinusSerif-TLF.fd}{%
      \renewcommand*\rmdefault{LibertinusSerif-TLF}%
      \renewcommand*\sfdefault{LibertinusSans-TLF}%
      \renewcommand*\ttdefault{LibertinusMono-TLF}%
    }{%
      \PackageWarning{main}{Libertinus is unavailable; falling back to TeX Gyre Pagella}%
      \saPalatinoFonts
    }%
  }
  \newcommand{\saSpringerFonts}{%
    \renewcommand*\encodingdefault{OT1}%
    \fontencoding{OT1}\selectfont
    \renewcommand*\rmdefault{cmr}%
    \renewcommand*\sfdefault{cmss}%
    \renewcommand*\ttdefault{cmtt}%
  }
\else
  % LuaLaTeX/XeLaTeX: direct UTF-8 input with fonts covering Chinese and Japanese.
  \RequirePackage{fontspec}
  % LuaLaTeX needs luatexja for CJK-aware line breaking; fontspec alone only
  % selects glyphs and can leave an entire Chinese paragraph in one long line.
  \ifLuaTeX
    \RequirePackage{luatexja-fontspec}
    \setmainjfont{Noto Serif CJK SC}[
      BoldFont={Noto Serif CJK SC Bold}
    ]
    \setsansjfont{Noto Sans CJK SC}
    \setmonojfont{Noto Sans Mono CJK SC}
  \fi
  \defaultfontfeatures{Ligatures=TeX,Scale=MatchLowercase}
  \newcommand{\saModernFonts}{%
    \setmainfont{Noto Serif CJK SC}[
      ItalicFont={Noto Serif CJK SC},
      ItalicFeatures={FakeSlant=0.2},
      BoldItalicFont={Noto Serif CJK SC Bold},
      BoldItalicFeatures={FakeSlant=0.2}
    ]%
    \setsansfont{Noto Sans CJK SC}%
    \setmonofont{Noto Sans Mono CJK SC}%
  }
  \newcommand{\saTimesFonts}{%
    \setmainfont{TeX Gyre Termes}%
    \setsansfont{TeX Gyre Heros}%
    \setmonofont{TeX Gyre Cursor}%
  }
  \newcommand{\saPalatinoFonts}{%
    \setmainfont{TeX Gyre Pagella}%
    \setsansfont{TeX Gyre Heros}%
    \setmonofont{TeX Gyre Cursor}%
  }
  \newcommand{\saLibertinusFonts}{%
    \IfFontExistsTF{Libertinus Serif}{%
      \setmainfont{Libertinus Serif}%
      \setsansfont{Libertinus Sans}%
      \IfFontExistsTF{Libertinus Mono}{\setmonofont{Libertinus Mono}}{\setmonofont{TeX Gyre Cursor}}%
    }{%
      \PackageWarning{main}{Libertinus is unavailable; falling back to TeX Gyre Pagella}%
      \saPalatinoFonts
    }%
  }
  \newcommand{\saSpringerFonts}{%
    \setmainfont{Latin Modern Roman}%
    \setsansfont{Latin Modern Sans}%
    \setmonofont{Latin Modern Mono}%
  }
  \newfontfamily\chinesefont{Noto Serif CJK SC}
  \newfontfamily\japanesefont{Noto Serif CJK JP}
  \newcommand{\chinese}[1]{{\chinesefont #1}}
  \newcommand{\japanese}[1]{{\japanesefont #1}}
\fi
\RequirePackage[english]{babel}

\saSpringerFonts
\ifPDFTeX
  \DisableLigatures[f]{family=sf*}
\fi

% Font and manuscript profiles. Select these in the preamble after \documentclass.
\makeatletter
\newcommand{\sa@font@modern}{\saModernFonts}
\newcommand{\sa@font@times}{%
  \saTimesFonts
  \ifPDFTeX\else
    \PackageInfo{main}{Times profile selected; wrap CJK text in \string\chinese\space or \string\japanese}%
  \fi
}
\newcommand{\sa@font@palatino}{\saPalatinoFonts}
\newcommand{\sa@font@libertinus}{\saLibertinusFonts}
\newcommand{\sa@font@springer}{%
  \saSpringerFonts
  \ifPDFTeX\else
    \PackageInfo{main}{Springer font profile selected; wrap CJK text in \string\chinese\space or \string\japanese}%
  \fi
}
\newcommand{\paperfont}[1]{%
  \@ifundefined{sa@font@#1}{%
    \PackageError{main}{Unknown paper font `#1'}{Available fonts are springer, modern, times, palatino, and libertinus.}%
  }{%
    \csname sa@font@#1\endcsname
  }%
}

\newcommand{\sa@manuscriptprofile}{compact}
\newcommand{\sa@manuscript@compact}{%
  \geometry{a4paper,margin=2.2cm}%
  \setstretch{1.0}%
  \fontsize{10}{12}\selectfont
}
\newcommand{\sa@manuscript@review}{%
  \geometry{margin=1in}%
  \fontsize{12}{14.4}\selectfont
  \doublespacing
}
\newcommand{\papermanuscript}[1]{%
  \@ifundefined{sa@manuscript@#1}{%
    \PackageError{main}{Unknown manuscript profile `#1'}{Available profiles are compact and review.}%
  }{%
    \gdef\sa@manuscriptprofile{#1}%
  }%
}
\AtBeginDocument{\csname sa@manuscript@\sa@manuscriptprofile\endcsname}
\makeatother

% Math, figures, tables, and lists
\RequirePackage{amsmath,amsfonts,amssymb,mathtools}
\RequirePackage{amsthm}
\RequirePackage{bm}
\RequirePackage{xspace}
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{makecell}
\RequirePackage{colortbl}
\RequirePackage{nicematrix}
\RequirePackage{siunitx}
\RequirePackage{enumitem}
\RequirePackage{pifont}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}

% Theorem-like environments. Their numbering follows sections.
\newtheorem{theorem}{Theorem}[section]
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{assumption}[theorem]{Assumption}
\newtheorem{hypothesis}[theorem]{Hypothesis}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\makeatletter
\let\sa@algorithmicx@algref\algref
\renewcommand{\theALG@line}{\thealgorithm.\arabic{ALG@line}}
\renewcommand{\theHALG@line}{\thealgorithm.\arabic{ALG@line}}
\makeatother

\setlist[itemize]{leftmargin=*,itemsep=2pt,topsep=3pt}
\setlist[enumerate]{leftmargin=*,itemsep=2pt,topsep=3pt}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}

% Float placement and spacing follow the Springer Nature reference layout.
\setcounter{totalnumber}{3}
\setcounter{topnumber}{5}
\setcounter{bottomnumber}{5}
\renewcommand\topfraction{.921}
\renewcommand\bottomfraction{.921}
\renewcommand\textfraction{.13}
\renewcommand\floatpagefraction{.887}
\renewcommand\dbltopfraction{.88}
\renewcommand\dblfloatpagefraction{.88}
\setlength\floatsep{18pt plus 4pt minus 2pt}
\setlength\textfloatsep{15pt plus 4pt minus 2pt}
\setlength\intextsep{18pt plus 4pt minus 2pt}
\setlength\dblfloatsep{20pt plus 4pt minus 2pt}
\setlength\dbltextfloatsep{15pt plus 4pt minus 2pt}

% Colors and boxed title panel
\RequirePackage[most]{tcolorbox}
\RequirePackage{xcolor}

\definecolor{themegreen}{HTML}{006B4F}
\definecolor{themeblue}{HTML}{0052C7}
\definecolor{themedark}{HTML}{0F6B2A}
\definecolor{fancybg}{HTML}{F0F7F4}
\definecolor{inkfg}{HTML}{1A2E22}
\definecolor{titlefg}{HTML}{1A2E22}
\definecolor{rulecolor}{HTML}{006B4F}
\definecolor{titleframe}{HTML}{BBD8CC}
\definecolor{metabg}{HTML}{E7F2ED}
\definecolor{metalink}{HTML}{006B4F}
\definecolor{simplebg}{HTML}{F3F6F4}
\definecolor{LightYellow}{HTML}{FEFBE8}
\definecolor{LightGreen}{HTML}{EAF6EE}
\definecolor{LightRed}{HTML}{FDECEA}
\definecolor{LightCyan}{HTML}{E6F6FA}
\definecolor{LightBlue}{HTML}{EAF1FB}
\definecolor{LightIndigo}{HTML}{EEF0FB}
\definecolor{LightGray}{HTML}{F2F4F7}
\definecolor{MarkRevision}{HTML}{C62828}
\definecolor{MarkCitation}{HTML}{B26A00}
\definecolor{MarkDone}{HTML}{18733C}
\definecolor{MarkVerify}{HTML}{1565C0}
\definecolor{MarkQuestion}{HTML}{6A3DBA}
\definecolor{MarkImportant}{HTML}{37474F}
\definecolor{CommentPanel}{HTML}{455A64}
\definecolor{OutlinePanel}{HTML}{8A5A00}
\colorlet{accentcolor}{themegreen}

% Inline manuscript workflow marks. The optional argument adds a short note,
% e.g. \needcitation[add a recent survey]. Remove these before submission.
\newcommand{\saWorkflowMark}[2]{%
  \tcbox[
    on line,
    nobeforeafter,
    colback=#1!10,
    colframe=#1!70,
    coltext=#1!90!black,
    boxrule=0.45pt,
    arc=2.5pt,
    boxsep=0pt,
    left=2.5pt,
    right=2.5pt,
    top=1pt,
    bottom=1pt,
    fontupper=\scriptsize\sffamily\bfseries
  ]{#2}%
}
\makeatletter
\newif\ifsa@draft
\sa@drafttrue
\newcommand{\saMarkWithNote}[4]{%
  \ifsa@draft
    \saWorkflowMark{#1}{#2}%
    \ifstrempty{#4}{}{\,{\scriptsize\sffamily\color{#3}#4}}%
  \fi
}
\newcommand{\needsrevision}[1][]{\saMarkWithNote{MarkRevision}{\ding{55}\ NEEDS REVISION}{MarkRevision}{#1}}
\newcommand{\needcitation}[1][]{\saMarkWithNote{MarkCitation}{\textbf{?}\ NEEDS CITATION}{MarkCitation}{#1}}
\newcommand{\revised}[1][]{\saMarkWithNote{MarkDone}{\ding{51}\ REVISED}{MarkDone}{#1}}
\newcommand{\needverify}[1][]{\saMarkWithNote{MarkVerify}{\textbf{!}\ VERIFY}{MarkVerify}{#1}}
\newcommand{\openquestion}[1][]{\saMarkWithNote{MarkQuestion}{\textbf{?}\ QUESTION}{MarkQuestion}{#1}}
\newcommand{\importantmark}[1][]{\saMarkWithNote{MarkImportant}{\textbf{!}\ IMPORTANT}{MarkImportant}{#1}}

% Block comments for coauthor discussion. The optional argument identifies the
% author or topic. Capturing the body ensures that final mode removes both the
% panel and its contents.
\NewDocumentEnvironment{commentpanel}{O{} +b}{%
  \ifsa@draft
    \begin{tcolorbox}[
      enhanced,
      breakable,
      colback=CommentPanel!5,
      colframe=CommentPanel!60,
      coltext=black,
      boxrule=0.6pt,
      arc=2.5pt,
      left=7pt,
      right=7pt,
      top=5pt,
      bottom=5pt,
      borderline west={2pt}{0pt}{CommentPanel},
      fonttitle=\small\sffamily\bfseries,
      title={Comment\ifstrempty{#1}{}{\enspace\textnormal{---}\enspace#1}}
    ]
      #2
    \end{tcolorbox}%
  \fi
}{}

% Drafting outlines placed before the section or paragraph they describe. The
% optional argument names that writing unit; final mode removes the whole plan.
\NewDocumentEnvironment{outlinepanel}{O{} +b}{%
  \ifsa@draft
    \begin{tcolorbox}[
      enhanced,
      breakable,
      colback=OutlinePanel!5,
      colframe=OutlinePanel!65,
      coltext=black,
      boxrule=0.6pt,
      arc=2.5pt,
      left=7pt,
      right=7pt,
      top=5pt,
      bottom=5pt,
      borderline west={2pt}{0pt}{OutlinePanel},
      fonttitle=\small\sffamily\bfseries,
      title={Writing outline\ifstrempty{#1}{}{\enspace\textnormal{---}\enspace#1}}
    ]
      #2
    \end{tcolorbox}%
  \fi
}{}
\makeatother

\makeatletter
\newcommand{\sa@sync@linkcolors}{%
  \@ifpackageloaded{hyperref}{%
    \hypersetup{%
      linkcolor=accentcolor,
      citecolor=accentcolor,
      urlcolor=accentcolor
    }%
  }{}%
}
\newcommand{\sa@theme@green}{%
  \definecolor{themegreen}{HTML}{006B4F}%
  \definecolor{themedark}{HTML}{0F6B2A}%
  \definecolor{fancybg}{HTML}{F0F7F4}%
  \definecolor{inkfg}{HTML}{1A2E22}%
  \definecolor{titlefg}{HTML}{1A2E22}%
  \definecolor{rulecolor}{HTML}{006B4F}%
  \definecolor{titleframe}{HTML}{BBD8CC}%
  \definecolor{metabg}{HTML}{E7F2ED}%
  \definecolor{metalink}{HTML}{006B4F}%
  \definecolor{simplebg}{HTML}{F3F6F4}%
  \colorlet{accentcolor}{themegreen}%
  \sa@sync@linkcolors
}
\newcommand{\sa@theme@blue}{%
  \definecolor{themedark}{HTML}{004BB5}%
  \definecolor{fancybg}{HTML}{F1F7FE}%
  \definecolor{inkfg}{HTML}{172B3A}%
  \definecolor{titlefg}{HTML}{172B3A}%
  \definecolor{rulecolor}{HTML}{0052C7}%
  \definecolor{titleframe}{HTML}{BFD8F5}%
  \definecolor{metabg}{HTML}{E7F1FD}%
  \definecolor{metalink}{HTML}{0052C7}%
  \definecolor{simplebg}{HTML}{F3F7FC}%
  \colorlet{accentcolor}{themeblue}%
  \sa@sync@linkcolors
}
\newcommand{\sa@theme@black}{%
  \definecolor{themedark}{HTML}{111111}%
  \definecolor{fancybg}{HTML}{FFFFFF}%
  \definecolor{inkfg}{HTML}{111111}%
  \definecolor{titlefg}{HTML}{111111}%
  \definecolor{rulecolor}{HTML}{111111}%
  \definecolor{metabg}{HTML}{F3F4F6}%
  \definecolor{metalink}{HTML}{111111}%
  \definecolor{simplebg}{HTML}{F1F2F4}%
  \colorlet{accentcolor}{black}%
  \colorlet{titleframe}{black!22}%
  \sa@sync@linkcolors
}
\newcommand{\papercolor}[1]{%
  \@ifundefined{sa@theme@#1}{%
    \PackageError{main}{Unknown paper color `#1'}{Available colors are green, blue, and black.}%
  }{%
    \csname sa@theme@#1\endcsname
  }%
}
\newcommand{\papertheme}[1]{\papercolor{#1}}
\papercolor{green}
\makeatother

% Links and bibliography
\RequirePackage{url}
\RequirePackage{hyperref}
\RequirePackage[noabbrev,nameinlink]{cleveref}
\RequirePackage{natbib}

\crefname{algorithm}{algorithm}{algorithms}
\Crefname{algorithm}{Algorithm}{Algorithms}
\crefname{hypothesis}{hypothesis}{hypotheses}
\Crefname{hypothesis}{Hypothesis}{Hypotheses}
\crefname{assumption}{assumption}{assumptions}
\Crefname{assumption}{Assumption}{Assumptions}

% Citation and bibliography presets. These retain natbib's familiar distinction:
% \cite/\citet for textual citations and \citep for parenthetical citations.
% The selected .bst name is exposed for the paper's final \bibliographystyle call.
\newcommand{\paperbibstyle}{apalike}
\makeatletter
\newcommand{\sa@bibliography@apa}{%
  \renewcommand{\paperbibstyle}{apalike}%
  \setcitestyle{authoryear,round,semicolon,aysep={,},yysep={;}}%
}
\newcommand{\sa@bibliography@chicago}{%
  \renewcommand{\paperbibstyle}{chicago}%
  \setcitestyle{authoryear,round,semicolon,aysep={,},yysep={;}}%
}
\expandafter\newcommand\csname sa@bibliography@author-year\endcsname{%
  \renewcommand{\paperbibstyle}{plainnat}%
  \setcitestyle{authoryear,round,semicolon,aysep={,},yysep={;}}%
}
\newcommand{\sa@bibliography@numeric}{%
  \renewcommand{\paperbibstyle}{unsrtnat}%
  \setcitestyle{numbers,square,comma,sort&compress}%
}
\newcommand{\paperbibliography}[1]{%
  \@ifundefined{sa@bibliography@#1}{%
    \PackageError{main}{Unknown bibliography style `#1'}%
      {Available styles are apa, chicago, author-year, and numeric.}%
  }{%
    \csname sa@bibliography@#1\endcsname
  }%
}
\paperbibliography{apa}
\makeatother

\hypersetup{
  colorlinks,
  linkcolor=accentcolor,
  citecolor=accentcolor,
  urlcolor=accentcolor
}

% Output modes. Draft mode shows workflow marks and colored links; final mode
% hides the marks and uses unobtrusive PDF links.
\makeatletter
\newcommand{\sa@mode@draft}{\sa@drafttrue}
\newcommand{\sa@mode@final}{\sa@draftfalse}
\newcommand{\papermode}[1]{%
  \@ifundefined{sa@mode@#1}{%
    \PackageError{main}{Unknown paper mode `#1'}{Available modes are draft and final.}%
  }{\csname sa@mode@#1\endcsname}%
}
\newif\ifsa@anonymous
\sa@anonymousfalse
\newcommand{\sa@boolean}[3]{%
  \ifstrequal{#2}{true}{\csname #1true\endcsname}{%
    \ifstrequal{#2}{false}{\csname #1false\endcsname}{%
      \PackageError{main}{Invalid value `#2'}{Use true or false for #3.}%
    }%
  }%
}
\newcommand{\paperanonymous}[1]{\sa@boolean{sa@anonymous}{#1}{\string\paperanonymous}}
\newif\ifsa@linenumbers
\sa@linenumbersfalse
\newcommand{\paperlinenumbers}[1]{\sa@boolean{sa@linenumbers}{#1}{\string\paperlinenumbers}}
\newif\ifsa@appendixmode
\sa@appendixmodefalse
\newcommand{\paperappendix}[1]{\sa@boolean{sa@appendixmode}{#1}{\string\paperappendix}}
\AtBeginDocument{%
  \ifsa@draft
    \hypersetup{colorlinks=true,linkcolor=accentcolor,citecolor=accentcolor,urlcolor=accentcolor}%
  \else
    \hypersetup{hidelinks}%
  \fi
  \ifsa@linenumbers\linenumbers\fi
  \ifsa@appendixmode\sa@activate@appendixmode\fi
}
\makeatother

\def\bibfont{\small}

% Optional metadata icons with text fallbacks.
\IfFileExists{fontawesome5.sty}{%
  \RequirePackage{fontawesome5}
  \newcommand{\saGithubIcon}{\faGithub}
  \newcommand{\saPlayIcon}{\faPlay}
  \newcommand{\saGlobeIcon}{\faGlobe}
  \newcommand{\saEnvelopeIcon}{\faEnvelope}
  \newcommand{\saCalendarIcon}{\faCalendar}
  \newcommand{\saDatabaseIcon}{\faDatabase}
}{%
  \newcommand{\saGithubIcon}{}
  \newcommand{\saPlayIcon}{}
  \newcommand{\saGlobeIcon}{}
  \newcommand{\saEnvelopeIcon}{}
  \newcommand{\saCalendarIcon}{}
  \newcommand{\saDatabaseIcon}{}
}
% Use the official project asset for a consistent ORCID mark across engines and
% systems, independently of the locally installed icon fonts.
\IfFileExists{figs/srcs/orcid.pdf}{%
  \newcommand{\saOrcidIcon}{%
    \raisebox{-0.18ex}{\includegraphics[height=1.35ex]{figs/srcs/orcid.pdf}}%
  }
}{%
  \newcommand{\saOrcidIcon}{\scriptsize ORCID}
}

% Headings
\RequirePackage{titlesec}

\titleformat{\section}
  {\fontsize{14}{16}\selectfont\rmfamily\bfseries\raggedright}
  {\thesection}
  {0.6em}
  {}

\titleformat{\subsection}
  {\fontsize{12}{14}\selectfont\rmfamily\bfseries\raggedright}
  {\thesubsection}
  {0.5em}
  {}

\titleformat{\subsubsection}
  {\fontsize{11}{13}\selectfont\rmfamily\bfseries\raggedright}
  {\thesubsubsection}
  {0.4em}
  {}

\titlespacing*{\section}{0pt}{12pt plus 4pt minus 2pt}{9pt}
\titlespacing*{\subsection}{0pt}{12pt plus 4pt minus 2pt}{6pt}
\titlespacing*{\subsubsection}{0pt}{12pt plus 4pt minus 2pt}{6pt}

% Captions
\RequirePackage{caption}
\DeclareCaptionFormat{springer}{{\bfseries #1#2}\hspace{0.7em}#3}
\DeclareCaptionFont{springersmall}{\fontsize{8}{9.5}\selectfont\rmfamily}
\captionsetup{
  singlelinecheck=false,
  format=springer,
  labelsep=none,
  font=springersmall,
  aboveskip=2.25pt,
  belowskip=6pt
}
\renewcommand{\figurename}{Fig.}
% Small helpers copied out of the paper body into the template layer.
\newcommand{\cmark}{\ding{51}}
\newcommand{\xmark}{\ding{55}}
\newcommand{\headbf}[1]{{\rmfamily\bfseries #1}}
\newcommand{\parahead}[1]{\par\noindent{\rmfamily\bfseries\itshape\spaceskip=0.35em #1.}\hspace{0.35em}\ignorespaces}
\newcommand{\term}[1]{\textbf{#1}}
\newcommand{\software}[1]{\textsc{#1}}
\newcommand{\datasetname}[1]{\textit{#1}}
\newcommand{\modelname}[1]{\textsc{#1}}
\providecommand{\figref}[1]{}
\renewcommand{\figref}[1]{\Cref{#1}}
\providecommand{\tabref}[1]{}
\renewcommand{\tabref}[1]{\Cref{#1}}
\newcommand{\secref}[1]{\Cref{#1}}
\newcommand{\appref}[1]{\Cref{#1}}
\makeatletter
\renewcommand{\algref}[1]{\@ifnextchar\bgroup{\sa@algline@ref{#1}}{Algorithm~\ref{#1}\xspace}}
\newcommand{\sa@algline@ref}[2]{\sa@algorithmicx@algref{#1}{#2}}
\makeatother
\providecommand{\eqnref}[1]{}
\renewcommand{\eqnref}[1]{\Cref{#1}}
\newcommand{\tablestyle}[2]{\setlength{\tabcolsep}{#1}\renewcommand{\arraystretch}{#2}\centering\small}
\newcolumntype{x}[1]{>{\centering\arraybackslash}p{#1pt}}
\newcolumntype{y}[1]{>{\raggedright\arraybackslash}p{#1pt}}
\newcolumntype{z}[1]{>{\raggedleft\arraybackslash}p{#1pt}}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}}
\newcolumntype{Y}{>{\centering\arraybackslash}X}

\makeatletter

% Title metadata state
\newcommand{\sa@title}{Untitled Paper}
\newcommand{\sa@displaytitle}{%
  \ifsa@appendixmode Appendix of \sa@title\else\sa@title\fi
}
\newcommand{\sa@authorlist}{}
\newcommand{\sa@affiliationlist}{}
\newcommand{\sa@contributionlist}{}
\newcommand{\sa@abstract}{}
\newcommand{\sa@keywords}{}
\newcommand{\sa@metadatalist}{}
\newcommand{\sa@resourcelist}{}
\newcommand{\sa@metadatasep}{\par\vspace{0.15em}}
\newcommand{\sa@paperstyle}{classic}
\newcommand{\sa@authorsep}{,\hspace{0.25em}}
\newcommand{\sa@affiliationsep}{\hspace{0.15em}\textcolor{titlefg}{\textperiodcentered}\hspace{0.15em}}
\newcommand{\sa@contributionsep}{,\enspace}
\newlength{\sa@keywordsTopSkip}
\setlength{\sa@keywordsTopSkip}{0.22cm}
\newsavebox{\sa@titlebox}
\newsavebox{\sa@abstractbox}

\newcommand{\sa@sups}[1]{\ifblank{#1}{}{\textsuperscript{\ensuremath{#1}}}}
\newcommand{\sa@authorfont}{\fontsize{12}{14.5}\selectfont\rmfamily\color{titlefg}}
\newcommand{\sa@authorformat}[2][]{%
  {\sa@authorfont#2\sa@sups{#1}}%
}
\newcommand{\sa@affiliationformat}[2][]{%
  {\small\color{titlefg}\sa@sups{#1}#2}%
}
\newcommand{\sa@contributionformat}[2][]{%
  {\small\color{titlefg}\sa@sups{#1}\textit{#2}}%
}
\newcommand{\sa@metadataformat}[2][]{%
  {\fontsize{9}{11}\selectfont\rmfamily\color{titlefg}\ifblank{#1}{}{\textbf{#1}\enspace}#2}%
}

\renewcommand{\title}[1]{\gdef\sa@title{#1}}
\renewcommand{\author}[2][]{%
  \ifdefempty{\sa@authorlist}
    {\gdef\sa@authorlist{\sa@authorformat[#1]{#2}}}
    {\gappto\sa@authorlist{\sa@authorsep\sa@authorformat[#1]{#2}}}%
}
% Author with a linked ORCID identifier. It uses the same marker syntax as
% \author and is hidden together with the author list in anonymous mode.
\newcommand{\orcidauthor}[3][]{%
  \author[#1]{#2\,\href{https://orcid.org/#3}{%
    \texorpdfstring{\saOrcidIcon}{ORCID #3}}}%
}
\newcommand{\affiliation}[2][]{%
  \ifdefempty{\sa@affiliationlist}
    {\gdef\sa@affiliationlist{\sa@affiliationformat[#1]{#2}}}
    {\gappto\sa@affiliationlist{\sa@affiliationsep\sa@affiliationformat[#1]{#2}}}%
}
\newcommand{\contribution}[2][]{%
  \ifdefempty{\sa@contributionlist}
    {\gdef\sa@contributionlist{\sa@contributionformat[#1]{#2}}}
    {\gappto\sa@contributionlist{\sa@contributionsep\sa@contributionformat[#1]{#2}}}%
}
\renewcommand{\abstract}[1]{\gdef\sa@abstract{#1}}
\newcommand{\keywords}[1]{\gdef\sa@keywords{#1}}
\newcommand{\metadata}[2][]{%
  \ifdefempty{\sa@metadatalist}
    {\gdef\sa@metadatalist{\sa@metadataformat[#1]{#2}}}
    {\gappto\sa@metadatalist{\sa@metadatasep\sa@metadataformat[#1]{#2}}}%
}

% Metadata convenience commands
\newcommand{\sa@metalabel}[2]{#1~#2}
\newcommand{\sa@metadataurl}[1]{\href{#1}{\nolinkurl{#1}}}
\newcommand{\email}[1]{\href{mailto:#1}{\texttt{#1}}}
\newcommand{\sa@appendresource}[1]{%
  \ifdefempty{\sa@resourcelist}
    {\gdef\sa@resourcelist{#1}}
    {\gappto\sa@resourcelist{\space#1}}%
}
\newcommand{\code}[1]{\sa@appendresource{The source code associated with this work is available at \sa@metadataurl{#1}.}}
\newcommand{\demo}[1]{\sa@appendresource{An interactive demonstration is available at \sa@metadataurl{#1}.}}
\newcommand{\project}[1]{\sa@appendresource{Additional information and project materials are available on the project website at \sa@metadataurl{#1}.}}
\newcommand{\dataset}[1]{\sa@appendresource{The dataset associated with this work is available at \sa@metadataurl{#1}.}}
% Keep the corresponding-author marker and address in one title-block entry.
% The optional marker follows the same convention as \author and \contribution.
\newcommand{\correspondence}[2][]{\contribution[#1]{Corresponding author: #2}}
\newcommand{\paperdate}[1]{\metadata[\sa@metalabel{\saCalendarIcon}{Date:}]{#1}}
\renewcommand{\date}[1]{\paperdate{#1}}

% Reproducibility links form a compact prose statement in an unnumbered
% first-page footnote. Correspondence remains part of the title block.
\newcommand{\sa@printfrontnotes}{%
  \ifdefempty{\sa@resourcelist}{}{%
    \begingroup
      \renewcommand{\thefootnote}{}%
      \renewcommand{\@makefntext}[1]{##1}%
      \footnotetext{%
        \fontsize{8}{9.5}\selectfont\rmfamily
        \sa@resourcelist
      }%
    \endgroup
  }%
}

\newcommand{\paperstyle}[1]{%
  \@ifundefined{sa@maketitle@#1}{%
    \PackageError{main}{Unknown paper style `#1'}{Available styles are fancy, simple, classic, and minimal.}%
  }{%
    \gdef\sa@paperstyle{#1}%
  }%
}

\newcommand{\sa@titleblock@typography}{%
  \renewcommand{\sa@authorformat}[2][]{%
    {\sa@authorfont##2\sa@sups{##1}}%
  }%
  \renewcommand{\sa@affiliationformat}[2][]{%
    {\fontsize{11}{13.5}\selectfont\rmfamily\color{titlefg}\sa@sups{##1}##2}%
  }%
  \renewcommand{\sa@contributionformat}[2][]{%
    {\fontsize{9}{11}\selectfont\rmfamily\color{titlefg}\sa@sups{##1}\textit{##2}}%
  }%
  \renewcommand{\sa@metadataformat}[2][]{%
    {\fontsize{9}{11}\selectfont\rmfamily\color{titlefg}\ifblank{##1}{}{\textbf{##1}\enspace}##2}%
  }%
  \renewcommand{\sa@authorsep}{,\hspace{0.25em}}%
  \renewcommand{\sa@affiliationsep}{\hspace{0.15em}\textcolor{titlefg}{\textperiodcentered}\hspace{0.15em}}%
  \renewcommand{\sa@contributionsep}{,\enspace}%
  \renewcommand{\sa@metadatasep}{\par\vspace{0.10em}}%
}

\newcommand{\sa@simple@titleblock@typography}{%
  \renewcommand{\sa@authorformat}[2][]{%
    {\sa@authorfont##2\sa@sups{##1}}%
  }%
  \renewcommand{\sa@affiliationformat}[2][]{%
    {\fontsize{11}{13.5}\selectfont\rmfamily\color{titlefg}\sa@sups{##1}##2}%
  }%
  \renewcommand{\sa@contributionformat}[2][]{%
    {\fontsize{9}{11}\selectfont\rmfamily\color{titlefg}\sa@sups{##1}##2}%
  }%
  \renewcommand{\sa@metadataformat}[2][]{%
    {\fontsize{9}{11}\selectfont\rmfamily\color{titlefg}\ifblank{##1}{}{\textbf{##1}\enspace}##2}%
  }%
  \renewcommand{\sa@authorsep}{,\hspace{0.25em}}%
  \renewcommand{\sa@affiliationsep}{,\enspace}%
  \renewcommand{\sa@contributionsep}{,\enspace}%
  \renewcommand{\sa@metadatasep}{\par\vspace{0.10em}}%
}

\newcommand{\sa@fancydivider}{%
  {\color{rulecolor!85}\rule{\linewidth}{0.65pt}}\par\vspace{-\parskip}%
}

\newcommand{\sa@fancymetadivider}{%
  {\color{rulecolor!55}\rule{\linewidth}{0.45pt}}\par\vspace{-\parskip}%
}
\newlength{\sa@fancyAbstractDividerSkip}
\setlength{\sa@fancyAbstractDividerSkip}{0.20cm}
\newlength{\sa@fancyAbstractLowerDividerSkip}
\setlength{\sa@fancyAbstractLowerDividerSkip}{-0.10cm}

\newcommand{\sa@titlefont}{\fontsize{17}{22.5}\selectfont\rmfamily\color{titlefg}}
\newcommand{\sa@compacttitlefont}{\fontsize{14}{16.5}\selectfont\rmfamily\color{titlefg}}
\newlength{\sa@titleheightlimit}
\newcommand{\sa@settitlebox}[1]{%
  \setbox\sa@titlebox=\vbox{%
    \hsize=\linewidth
    \parindent=0pt
    #1%
    \global\sa@titleheightlimit=2.75\baselineskip
    \centering
    \nohyphens
    \strut\sa@displaytitle\strut\par
  }%
}
\newcommand{\sa@printtitle}{%
  \begingroup
    \sa@settitlebox{\sa@titlefont}%
    \ifdim\dimexpr\ht\sa@titlebox+\dp\sa@titlebox\relax>\sa@titleheightlimit
      \sa@settitlebox{\sa@compacttitlefont}%
    \fi
    \box\sa@titlebox
  \endgroup
}
\newcommand{\sa@setabstractbox}{%
  \setbox\sa@abstractbox=\vbox{%
    \hsize=\linewidth
    \parindent=0pt
    \fontsize{9}{11}\selectfont\rmfamily\color{inkfg}%
    \leftskip=24pt\rightskip=24pt\parfillskip=0pt plus 1fil
    \noindent\sa@abstract\par
  }%
}
\newcommand{\sa@printabstract}{%
  \begingroup
    \sa@setabstractbox
    \box\sa@abstractbox
  \endgroup
}

\newcommand{\sa@maketitle@fancy}{%
  \begingroup
    \sa@titleblock@typography
    \begin{tcolorbox}[
      enhanced,
      colback=fancybg,
      colframe=titleframe,
      boxrule=0.45pt,
      arc=10pt,
      boxsep=0pt,
      left=0.7cm,
      right=0.7cm,
      top=0.45cm,
      bottom=0.45cm,
      before skip=0pt,
      grow to left by=1pt,
      grow to right by=1pt,
      drop fuzzy shadow={black!10!white}
    ]
      {%
        \raggedright
        \nohyphens
        {\noindent\sa@printtitle\par}
        \vskip 0.20cm
        {\setstretch{1.0}\normalsize\sa@authorlist\par}
        \ifdefempty{\sa@affiliationlist}{}{%
          \vskip 0.20cm
          {\sa@affiliationlist\par}
        }
        \ifdefempty{\sa@contributionlist}{}{%
          \vskip 0.20cm
          {\sa@contributionlist\par}
        }
      }%
      \ifdefempty{\sa@abstract}{}{%
        \vskip 0.10cm
        \sa@fancydivider
        \vskip\sa@fancyAbstractDividerSkip
        \sa@printabstract
      }
      \ifdefempty{\sa@keywords}{}{%
        \vskip 0.10cm
        {\normalsize\sffamily\textbf{\color{titlefg}Keywords:}\enspace\color{titlefg}\sa@keywords\par}
      }
      \ifdefempty{\sa@metadatalist}{}{%
        \ifdefempty{\sa@abstract}{%
          \vskip 0.10cm
        }{%
          \ifdefempty{\sa@keywords}{%
            \vskip\sa@fancyAbstractLowerDividerSkip
          }{%
            \vskip 0.10cm
          }%
        }%
        \sa@fancymetadivider
        \vskip 0.10cm
        \begin{tcolorbox}[
          enhanced,
          frame hidden,
          colback=metabg,
          arc=5pt,
          boxsep=0pt,
          left=0.22cm,
          right=0.22cm,
          top=0.09cm,
          bottom=0.09cm
        ]
          {\setstretch{1.0}\sa@metadatalist\par}
        \end{tcolorbox}
      }
    \end{tcolorbox}
  \endgroup
  \tcbset{reset}
  \FloatBarrier
}

\newcommand{\sa@maketitle@simple}{%
  \begingroup
    \sa@simple@titleblock@typography
    \renewcommand{\sa@metalabel}[2]{##2}%
    \begin{tcolorbox}[
      enhanced,
      frame hidden,
      colback=simplebg,
      arc=10pt,
      boxsep=0pt,
      left=0.7cm,
      right=0.7cm,
      top=0.45cm,
      bottom=0.45cm,
      before skip=0pt,
      grow to left by=1pt,
      grow to right by=1pt
    ]
      {%
        \raggedright
        \nohyphens
        {\noindent\sa@printtitle\par}
        \vskip 0.20cm
        {\setstretch{1.0}\normalsize\sa@authorlist\par}
        \ifdefempty{\sa@affiliationlist}{}{%
          \vskip 0.20cm
          {\setstretch{1.0}\sa@affiliationlist\par}
        }
        \ifdefempty{\sa@contributionlist}{}{%
          \vskip 0.20cm
          {\setstretch{1.0}\sa@contributionlist\par}
        }
      }%
      \ifdefempty{\sa@abstract}{}{%
        \vskip 0.30cm
        \sa@printabstract
      }
      \ifdefempty{\sa@keywords}{}{%
        \vskip 0.10cm
        {\normalsize\sffamily\textbf{\color{titlefg}Keywords:}\enspace\color{titlefg}\sa@keywords\par}
      }
      \ifdefempty{\sa@metadatalist}{}{%
        \vskip 0.30cm
        {\setstretch{1.0}\sa@metadatalist\par}
      }
    \end{tcolorbox}
  \endgroup
  \tcbset{reset}
  \FloatBarrier
}

% Traditional journal title: centered typography without a colored panel.
\newcommand{\sa@maketitle@classic}{%
  \begingroup
    \sa@simple@titleblock@typography
    \renewcommand{\sa@affiliationsep}{\par}%
    \renewcommand{\sa@contributionsep}{\par}%
    \vspace*{1.15cm}%
    \begin{center}
      {\fontsize{17}{22.5}\selectfont\rmfamily\color{titlefg}\nohyphens\sa@displaytitle\par}
      \ifdefempty{\sa@authorlist}{}{\vskip 0.55cm{\setstretch{1.0}\sa@authorlist\par}}%
      \ifdefempty{\sa@affiliationlist}{}{\vskip 0.22cm{\sa@affiliationlist\par}}%
      \ifdefempty{\sa@contributionlist}{}{\vskip 0.40cm{\sa@contributionlist\par}}%
      \ifdefempty{\sa@metadatalist}{}{%
        \vskip 0.35cm
        {\setstretch{1.0}\sa@metadatalist\par}%
      }%
    \end{center}
    \ifdefempty{\sa@abstract}{}{%
      \vskip 0.35cm
      {\centering\fontsize{9}{11}\selectfont\bfseries Abstract\par}%
      \vskip 0.10cm
      \sa@printabstract
    }%
    \ifdefempty{\sa@keywords}{}{%
      \vskip 0.18cm
      {\fontsize{12}{14.4}\selectfont\rmfamily\leftskip=24pt\rightskip=24pt
        \textbf{Keywords:}\enspace\sa@keywords\par}%
    }%
  \endgroup
  \vskip 0.55cm
  \FloatBarrier
}

% Minimal title: left aligned with one restrained divider and no background.
\newcommand{\sa@maketitle@minimal}{%
  \begingroup
    \sa@titleblock@typography
    {\noindent\sa@printtitle\par}
    \vskip 0.22cm
    {\setstretch{1.0}\normalsize\sa@authorlist\par}
    \ifdefempty{\sa@affiliationlist}{}{\vskip 0.12cm{\sa@affiliationlist\par}}%
    \ifdefempty{\sa@contributionlist}{}{\vskip 0.10cm{\sa@contributionlist\par}}%
    \vskip 0.18cm
    {\color{rulecolor!70}\rule{\linewidth}{0.55pt}}\par
    \ifdefempty{\sa@abstract}{}{\vskip 0.18cm\sa@printabstract}%
    \ifdefempty{\sa@keywords}{}{%
      \vskip 0.10cm
      {\small\sffamily\textbf{Keywords:}\enspace\sa@keywords\par}%
    }%
    \ifdefempty{\sa@metadatalist}{}{%
      \vskip 0.14cm{\setstretch{1.0}\small\sa@metadatalist\par}%
    }%
  \endgroup
  \FloatBarrier
}

\newcommand{\sa@maketitle}{%
  \csname sa@maketitle@\sa@paperstyle\endcsname
}

\renewcommand{\maketitle}{%
  \ifsa@anonymous
    \hypersetup{pdftitle={\sa@displaytitle},pdfauthor={Anonymous}}%
    \gdef\sa@authorlist{Anonymous Author(s)}%
    \gdef\sa@affiliationlist{}%
    \gdef\sa@contributionlist{}%
    \gdef\sa@metadatalist{}%
    \gdef\sa@resourcelist{}%
  \else
    \hypersetup{pdftitle={\sa@displaytitle}}%
  \fi
  \if@twocolumn
    \twocolumn[\sa@maketitle\vskip 0.4cm]%
  \else
    \sa@maketitle
  \fi
  \sa@printfrontnotes
  \ifsa@appendixmode
    \tableofcontents
    \clearpage
  \fi
}

% Standalone appendix documents reproduce the reference Appendix.tex scheme:
% sections A, B, ...; subsections A1, A2, ...; and per-section A1 figure,
% table, equation, and algorithm numbering. The mode also prefixes the title
% and prints a table of contents after the title block.
\newcommand{\sa@activate@appendixmode}{%
  \renewcommand{\thesection}{\Alph{section}}%
  \renewcommand{\thesubsection}{\thesection\arabic{subsection}}%
  \renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}%
  \@addtoreset{figure}{section}%
  \@addtoreset{table}{section}%
  \@addtoreset{equation}{section}%
  \@addtoreset{algorithm}{section}%
  \renewcommand{\thefigure}{\thesection\arabic{figure}}%
  \renewcommand{\thetable}{\thesection\arabic{table}}%
  \renewcommand{\theequation}{\thesection\arabic{equation}}%
  \renewcommand{\thealgorithm}{\thesection\arabic{algorithm}}%
  \setcounter{tocdepth}{2}%
}

\newcommand{\beginappendix}{%
  \appendix
  % Use one fixed A-prefix sequence across the whole appendix, independent of
  % appendix sections: Figure A.1, Figure A.2; Table A.1, Table A.2; etc.
  \setcounter{figure}{0}%
  \setcounter{table}{0}%
  \setcounter{equation}{0}%
  \setcounter{algorithm}{0}%
  \renewcommand{\thefigure}{A.\arabic{figure}}%
  \renewcommand{\thetable}{A.\arabic{table}}%
  \renewcommand{\theequation}{A.\arabic{equation}}%
  \renewcommand{\thealgorithm}{A.\arabic{algorithm}}%
  \renewcommand{\theHfigure}{appendix.A.\arabic{figure}}%
  \renewcommand{\theHtable}{appendix.A.\arabic{table}}%
  \renewcommand{\theHequation}{appendix.A.\arabic{equation}}%
  \renewcommand{\theHalgorithm}{appendix.A.\arabic{algorithm}}%
  \section*{Appendix}
  \addcontentsline{toc}{section}{Appendix}
}

\makeatother
