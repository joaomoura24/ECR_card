%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Edinburgh Centre for Robotics Business Card Class
%
% Adapted from: http://rainnic.altervista.org/content/template-business-card-using-latex
%
% Created at: 01/06/2016
% Last modified at: 21/07/2016
% By: Joao Moura
% Email: jmm7@hw.ac.uk
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ecr_card}[2016/06/01 Edinburgh Centre for Robotics Business Card Class]
\LoadClass[10pt]{letter}
\RequirePackage{ticket}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage[noheadfoot,nomarginpar,margin=0pt,paperwidth=85mm,paperheight=55mm]{geometry}
\RequirePackage{pstricks}
\RequirePackage{pst-barcode}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Change font to sans serif
\renewcommand{\familydefault}{\sfdefault}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dimension Definitions
\ticketNumbers{1}{1}
\setlength{\unitlength}{1mm}
\ticketSize{85}{55} %in unitlength
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%adjust these margins using the 'boxed' option with ticket, e.g. \usepackage[boxed]{ticket}
\advance \voffset -0.35cm
\advance \hoffset -.01cm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colour used in the ECR Website
\definecolor{cdt_blue}{RGB}{40,57,87}
\definecolor{cdt_grey}{RGB}{58,69,78}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% make your default ticket. \ticketdefault is somewhat like a background here it is empty, because we use different tickets for the front and the back of our card
\renewcommand{\ticketdefault}{}
% now what do you like to put in your ticket front part:
\newcommand{\vcardfront}[9]{\ticket{%
	\def\temp{#5}\ifx\temp\empty
		\put(62,34){\includegraphics[height=18mm]{ecr_simple.eps}}
		\put(4,24){\color{cdt_grey}\Large \textbf{#1}}
		\put(4,20){\color{cdt_grey}\scriptsize #2}
		\put(4,16.5){\color{cdt_grey}\scriptsize EPSRC Centre for Doctoral Training in}
		\put(4,14){\color{cdt_grey}\scriptsize Robotics and Autonomous Systems}
		\put(4,9){\color{cdt_grey}\scriptsize #3}
		\put(4,6.5){\color{cdt_grey}\scriptsize #4}
		\put(4,4){\color{cdt_grey}\scriptsize \textbf{www.edinburgh-robotics.org}}
	\else
		\put(62,34){\includegraphics[height=18mm]{ecr_simple.eps}}
		\put(4,4){\psbarcode[linecolor=cdt_grey]{MECARD:N:#6,#5;EMAIL:#7;URL:#9;TEL:#8;}{eclevel=L width=0.669291 height=0.669291}{qrcode}}
		\put(4,24){\color{cdt_grey}\Large \textbf{#1} \scriptsize #2}
		\put(22,19){\color{cdt_grey}\scriptsize EPSRC Centre for Doctoral Training in}
		\put(22,16.5){\color{cdt_grey}\scriptsize Robotics and Autonomous Systems}
		\put(22,9){\color{cdt_grey}\scriptsize #3}
		\put(22,6.5){\color{cdt_grey}\scriptsize #4}
		\put(22,4){\color{cdt_grey}\scriptsize \textbf{www.edinburgh-robotics.org}}
	\fi
}}
% Back part of the card
\newcommand{\vcardback}[0]{\ticket{%
	\put(4,16){\includegraphics[height=23mm]{ecr.eps}}
	\put(28,12){
		\begin{picture}(1,1)
		\put(0,0){\line(0,1){31}}
		\end{picture}
	}
	\put(32,17){\includegraphics[height=19mm]{uoe2.eps}}
	\put(59,21){\includegraphics[height=11mm]{hwu.eps}}
}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{empty}
\parindent=0pt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
