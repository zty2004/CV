.PHONY: all en cn a a-cn clean clean-tmp

# en / cn — 求职版（industry）
# a / a-cn — 科研版（academic）

all: en cn a a-cn

en: cv.tex
	xelatex -interaction=nonstopmode -shell-escape cv.tex >/dev/null 2>&1
	xelatex -interaction=nonstopmode -shell-escape cv.tex
	$(MAKE) clean-tmp

cn: cv-cn.tex
	xelatex -interaction=nonstopmode -shell-escape cv-cn.tex >/dev/null 2>&1
	xelatex -interaction=nonstopmode -shell-escape cv-cn.tex
	$(MAKE) clean-tmp

a: cv-a.tex
	xelatex -interaction=nonstopmode -shell-escape cv-a.tex >/dev/null 2>&1
	xelatex -interaction=nonstopmode -shell-escape cv-a.tex
	$(MAKE) clean-tmp

a-cn: cv-a-cn.tex
	xelatex -interaction=nonstopmode -shell-escape cv-a-cn.tex >/dev/null 2>&1
	xelatex -interaction=nonstopmode -shell-escape cv-a-cn.tex
	$(MAKE) clean-tmp

clean-tmp:
	rm -f *.aux *.log *.out *.toc *.synctex.gz *.bbl *.blg *.fdb_latexmk *.fls *.bcf *.xml *.minted
	rm -rf _minted*

clean: clean-tmp
	rm -f cv.pdf cv-cn.pdf cv-a.pdf cv-a-cn.pdf
