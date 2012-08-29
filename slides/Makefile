mphil_slides.pdf: wenbin_mars_thesisl.tex \
				section/*.tex

	latex wenbin_mars_thesisl.tex
	bibtex wenbin_mars_thesisl
	latex wenbin_mars_thesisl.tex
	latex wenbin_mars_thesisl.tex
	dvipdf wenbin_mars_thesisl.dvi mphil_slides.pdf

handout:

	latex wenbin_mars_handout.tex
	bibtex wenbin_mars_handout
	latex wenbin_mars_handout.tex
	latex wenbin_mars_handout.tex
	dvipdf wenbin_mars_handout.dvi mphil_handout.pdf

clean:
	rm *.aux *.bbl *.blg *.dvi *.bak *.toc *.tol *.lof *.log *.lot *.nav *.out *.snm
read:
	acroread mphil_slides.pdf
readh:
	acroread mphil_handout.pdf
