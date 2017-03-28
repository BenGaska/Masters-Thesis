PAPER = Thesis
LATEX = pdflatex
BIBTEX = bibtex

paper: $(PAPER).tex
	-rm *.bbl
	$(LATEX) $(PAPER)
	$(BIBTEX) $(PAPER)
	$(LATEX) $(PAPER)
	$(LATEX) $(PAPER)

clean:
	-rm *.bbl
	-rm *.aux
	-rm *.blg
	-rm *.dvi
	-rm *.log
	-rm *.ps *.pdf

all:
	paper


