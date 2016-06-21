%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Edinburgh Centre for Robotics Business Card Class
%
% Adapted from: http://rainnic.altervista.org/content/template-business-card-using-latex
%
% Last modified at: 01/06/2016
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
\RequirePackage[noheadfoot,nomarginpar,margin=0pt,paperwidth=85mm,paperheight=54mm]{geometry}
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
\ticketSize{85}{54} %in unitlength
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%adjust these margins using the 'boxed' option with ticket, e.g. \usepackage[boxed]{ticket}
\advance \voffset -0.35cm
\advance \hoffset -.01cm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colour used in the ECR Website
\definecolor{cdt_blue}{RGB}{40,57,87}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% make your default ticket. \ticketdefault is somewhat like a background here it is empty, because we use different tickets for the front and the back of our card
\renewcommand{\ticketdefault}{}
% now what do you like to put in your ticket front part:
\newcommand{\vcardfront}[9]{\ticket{%
			\put(62,31){\includegraphics[height=18mm]{ecr_simple.eps}}
			\put(4,43){\includegraphics[height=6mm]{hwu.eps}}
			\put(18,43){\includegraphics[height=6mm]{uoe.eps}}
			\put(4,4){\psbarcode[linecolor=cdt_blue]{MECARD:N:#7,#6;EMAIL:#5;URL:#8;TEL:#9;}{eclevel=L width=0.669291 height=0.669291}{qrcode}}
			\put(4,24){\color{cdt_blue}\Large \textbf{#1 #2} \scriptsize #3}
			\put(22,19){\color{cdt_blue}\scriptsize EPSRC Centre for Doctoral Training in}
			\put(22,16.5){\color{cdt_blue}\scriptsize Robotics and Autonomous Systems}
			%\put(22,14){\color{cdt_blue}\scriptsize Edinburgh Centre for Robotics}
			\put(22,9){\color{cdt_blue}\scriptsize #4}
			\put(22,6.5){\color{cdt_blue}\scriptsize #5}
			\put(22,4){\color{cdt_blue}\scriptsize \textbf{www.edinburgh-robotics.org}}
}}
% Back part of the card
\newcommand{\vcardback}[0]{\ticket{%
	\put(27,9){\includegraphics[width=33mm]{ecr.eps}}
}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{empty}
\parindent=0pt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
