.PHONY: all cn en phd clean clean-tmp

all: cn en phd

cn: cv-cn.tex
	xelatex -interaction=nonstopmode -shell-escape cv-cn.tex
	$(MAKE) clean-tmp

phd: cv-phd.tex
	xelatex -interaction=nonstopmode -shell-escape cv-phd.tex
	$(MAKE) clean-tmp

en: cv.tex
	xelatex -interaction=nonstopmode -shell-escape cv.tex
	$(MAKE) clean-tmp

clean-tmp:
	rm -f *.aux *.log *.out *.toc *.synctex.gz *.bbl *.blg *.fdb_latexmk *.fls *.bcf *.xml *.minted

clean: clean-tmp
	rm -f cv-cn.pdf cv.pdf cv-phd.pdf
