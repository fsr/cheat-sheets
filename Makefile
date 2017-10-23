# Makefile for creating a PDF from a LaTeX project
LATEX = lualatex
LATEXFLAGS = -halt-on-error -no-shell-escape
LATEXMK = latexmk
LATEXMKFLAGS = -f
TARGET = unix-cheat-sheet.pdf

.PHONY: all
all: $(TARGET)

%.pdf: %.tex
	$(LATEXMK) --shell-escape $(LATEXMKFLAGS) -pdflatex="$(LATEX) $(LATEXFLAGS) %O %S" \
		-pdf $<
