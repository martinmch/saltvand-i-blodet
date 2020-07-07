SOURCES=$(wildcard **/*.tex)

all: main.pdf

main.pdf: $(SOURCES) abstract.tex main.tex
	pdflatex main.tex
