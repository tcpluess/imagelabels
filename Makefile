SUBDIRS := $(sort $(dir $(wildcard samples/*/*)))

.PHONY: all $(SUBDIRS) clean

all: $(SUBDIRS)

$(SUBDIRS):  ; $(MAKE) -C $@ $(MAKECMDGOALS)

clean: $(SUBDIRS)
	--@rm -rf *-gnuplottex-fig*.*
	--@rm -rf *.aux *.log *.lof *.bak *.loa *.log *.lot *.bbl *.blg *.dvi *.out *.brf
	--@rm -rf *.thm *.toc *.idx *.ilg *.ind *eps-converted-to.pdf *.gnuplot *.tps
	--@rm -rf *-gnuplottex-fig*.* *temp*.dat *.nav *.snm *.vrb *.lol *.tmp
	--@rm -rf gnuplottex *.synctex *.synctex.gz *.xwm
