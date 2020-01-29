# Makefile for compiling a *.tex file into a *.pdf file
# The current folder must contain only one *.tex file
#
# Author: Joao Moura
# Email: jmm7@hw.ac.uk
# Last Modified at 29/01/2020
#
#################################################################
#################################################################
# Identify what is the name of the *.tex file to compile
# NOTE: There must be a single *.tex file in the current directory
FILE_TEX=$(wildcard *.tex)
TARGET=$(FILE_TEX:.tex=)
#################################################################

#################################################################
# Rule that runs when the make is called
FORCE: $(FILE_TEX)
	latex $(FILE_TEX)
	dvips -o $(TARGET).ps $(TARGET).dvi
	ps2pdf $(TARGET).ps
#################################################################

#################################################################
# Rule for cleaning: It removes all the files with TARGET name except the file with *.tex extension
.PHONY: clean
clean: 
	rm -f $(filter-out $(TARGET).tex, $(wildcard $(TARGET).*))
#################################################################
