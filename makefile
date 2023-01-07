SOURCES=$(wildcard **/*.tex)

all: main.pdf

footnotes: $(SOURCES)
	cat $^ | grep -o '^\[^.*\]' > footnotes

main.toc: $(SOURCES)
	pdflatex main.tex

main.pdf: $(SOURCES) abstract.tex main.tex main.toc
	pdflatex main.tex

clean:
	-rm -f main.aux main.log main.pdf main.toc main.out
	-rm -f footnotes

.PHONY: clean
