.PHONY: all cn en clean clean-tmp

all: cn en

cn: cv-chinese.tex
	xelatex -interaction=nonstopmode cv-chinese.tex
	$(MAKE) clean-tmp

en: cv.tex
	xelatex -interaction=nonstopmode cv.tex
	$(MAKE) clean-tmp

clean-tmp:
	rm -f *.aux *.log *.out *.toc *.synctex.gz *.bbl *.blg *.fdb_latexmk *.fls

clean: clean-tmp
	rm -f cv-chinese.pdf cv.pdf