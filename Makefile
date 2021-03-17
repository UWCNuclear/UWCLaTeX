D = Thesis

all:
	latex $(D)
	bibtex $(D)
	latex $(D)
	latex $(D)
	dvipdf $(D).dvi $(D).pdf

clean:
	-rm -f $(D).aux
	-rm -f *chapter.aux
	-rm -f *.aux
	-rm -f $(D).bbl
	-rm -f $(D).blg
	-rm -f $(D).cre
	-rm -f $(D).crf
	-rm -f $(D).dvi
	-rm -f $(D).idx
	-rm -f $(D).ilg
	-rm -f $(D).ind
	-rm -f $(D).lof
	-rm -f $(D).log
	-rm -f $(D).lot
	-rm -f $(D).log
	-rm -f $(D).not
	-rm -f $(D).cb
	-rm -f $(D).ptc
	-rm -f 4up-$(D).ps
	-rm -f 4up-$(D).pdf
	-rm -f $(D).ps
	-rm -f $(D).pdf
	-rm -f $(D).toc 
	-rm les*.aux
	-rm *~
	-rm *.bak
	-rm figures/*.bak
	-mkdir ../backup

cleanup:
	-rm -f $(D).pdf
	-rm -f $(D).ps
	-make clean
	-rm -rf backup

cleanall:
	-make clean
	-rm -rf backup
