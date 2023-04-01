.PHONY: all clean

DOCUMENT := simple

all:
	TEXINPUTS=:.:../../ latexmk -pdf $(DOCUMENT).tex

clean:
	latexmk -c
