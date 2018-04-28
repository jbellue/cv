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

\newcommand{\datedsection}[2]{ %
    \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedtitledsubsection}[3]{ %
    \subsection[#1]{\textbf{#1} --- #2 \hfill #3}%
}
\newcommand{\datedsubsection}[2]{ %
    \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\name}[1]{
    \centerline{\Huge{#1}}
}

\newcommand{\contact}[5]{
\vspace{5mm}
\begin{minipage}{0.45\linewidth}
  #1 \\
  #2 \\
  #3
\end{minipage}
\begin{minipage}{0.45\linewidth}
  \begin{tabular}{ll}
    & \href{mailto:#4}{\tt #4} \\
    & #5 \\
  \end{tabular}
\end{minipage}
}

\newcolumntype{L}{>{\raggedleft}p{0.14\textwidth}}
\newcolumntype{R}{p{0.8\textwidth}}
\newcommand\VRule{\vrule width 0.5pt}


