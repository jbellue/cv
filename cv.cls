\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[6/6/2013 custom CV class]
\LoadClass{article}
\RequirePackage{titlesec}
\usepackage{array}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
  
\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

\newcommand{\datedsection}[2]{
    \section[#1]{#1 \hfill #2}
}
\newcommand{\datedtitledsubsection}[3]{
    \subsection[#1]{\textbf{#1} --- #2 \hfill #3}
}
\newcommand{\datedsubsection}[2]{
    \subsection[#1]{#1 \hfill #2}
}

\newcommand{\name}[1]{
    \centerline{\Huge{#1}}
}

\newcommand{\contact}[6]{
\ifx&#1&
\else
  \vspace*{5.75pt}
  \centerline{\huge{#1}}
\fi
\vspace{5mm}
\begin{minipage}{0.45\linewidth}
\ifx&#2&
\else
  #2
\fi
\ifx&#3&
\else
  \ifx&#2& %if there was a first line, add a return
  \else
    \\
  \fi
  #3
\fi
\ifx&#4&
\else
  \ifx&#3&   % if there was no previous argument,
    \ifx&#2& % add a new line
    \else
      \\
    \fi
  \else
    \\
  \fi
  #4
\fi
\end{minipage}
\begin{minipage}{0.45\linewidth}
  \begin{tabular}{ll}
    \ifx&#5&
    \else
    & \href{mailto:#5}{\tt #5} \\
    \fi
    \ifx&#6&
    \else
    & #6
    \fi
  \end{tabular}
\end{minipage}
}

\newcolumntype{L}{>{\raggedleft}p{0.14\textwidth}}
\newcolumntype{R}{p{0.8\textwidth}}
\newcommand\VRule{\vrule width 0.5pt}
