PAPER = paper

all: $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex references.bib
	pdflatex -interaction=nonstopmode $(PAPER).tex
	bibtex $(PAPER) || true
	pdflatex -interaction=nonstopmode $(PAPER).tex
	pdflatex -interaction=nonstopmode $(PAPER).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.synctex.gz

distclean: clean
	rm -f $(PAPER).pdf

.PHONY: all clean distclean
