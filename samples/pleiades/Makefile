.PHONY: all clean

all:
	pdflatex --interaction=nonstopmode --shell-escape figure.tex

	# needs imagemagick!
	convert -density 300 -alpha remove -background white figure.pdf figure.png

clean:
	--@rm -rf *-gnuplottex-fig*.* *.gnuploterrors
	--@rm -rf *.aux *.log *.lof *.bak *.loa *.log *.lot *.bbl *.blg *.dvi *.out *.brf
	--@rm -rf *.thm *.toc *.idx *.ilg *.ind *eps-converted-to.pdf *.gnuplot *.tps
	--@rm -rf *-gnuplottex-fig*.* *temp*.dat *.nav *.snm *.vrb *.lol *.tmp
	--@rm -rf gnuplottex *.synctex *.synctex.gz *.xwm
