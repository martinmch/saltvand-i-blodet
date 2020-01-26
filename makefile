SOURCES=$(wildcard **/*.tex)

all: saltvand-i-blodet-build.pdf footnotes

footnotes: $(SOURCES)
	cat $^ | grep -o '^\[^.*\]' > footnotes


saltvand-i-blodet-build.pdf: $(SOURCES) abstract.tex main.tex
	pdflatex main.tex
	mv main.tex saltvand-i-blodet-build.pdf
