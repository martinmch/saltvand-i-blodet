SOURCES=$(wildcard **/*.tex)

all: saltvand-i-blodet-build.pdf footnotes

footnotes: $(SOURCES)
	cat $^ | grep -o '^\[^.*\]' > footnotes

main.toc: $(SOURCES)
	pdflatex main.tex

saltvand-i-blodet-build.pdf: $(SOURCES) abstract.tex main.tex main.toc
	pdflatex main.tex
	mv main.pdf saltvand-i-blodet-build.pdf

clean:
	-rm -f main.aux main.log saltvand-i-blodet-build.pdf main.toc main.out
	-rm -f footnotes

.PHONY: clean
