.PHONY: all cn en clean clean-tmp

all: cn en

cn: cv-cn.tex
	xelatex -interaction=nonstopmode -shell-escape cv-cn.tex
	$(MAKE) clean-tmp

en: cv.tex
	xelatex -interaction=nonstopmode -shell-escape cv.tex
	$(MAKE) clean-tmp

clean-tmp:
	rm -f *.aux *.log *.out *.toc *.synctex.gz *.bbl *.blg *.fdb_latexmk *.fls *.bcf *.xml

clean: clean-tmp
	rm -f cv-cn.pdf cv.pdf
