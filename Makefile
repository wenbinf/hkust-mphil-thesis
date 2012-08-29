thesis.pdf: main.tex \
				chapter/*.tex \

	latex main.tex
	bibtex main
	latex main.tex
	latex main.tex
	dvipdf main.dvi thesis.pdf

clean:
	rm *.aux *.bbl *.blg *.dvi *.pdf *.bak *.toc *.tol *.lof *.log *.lot
read:
	acroread thesis.pdf
