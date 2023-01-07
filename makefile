SOURCES=$(wildcard **/*.tex)

all: saltvand-i-blodet-build.pdf footnotes

footnotes: $(SOURCES)
	cat $^ | grep -o '^\[^.*\]' > footnotes

main.toc:
	pdflatex main.tex

saltvand-i-blodet-build.pdf: $(SOURCES) abstract.tex main.tex main.toc
	pdflatex main.tex
	mv main.pdf saltvand-i-blodet-build.pdf
