PAPER := The-Unbearable-Notation-of-Logic
LATEXMK ?= latexmk

.PHONY: all clean

all: $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build $<
	cp build/$(PAPER).pdf $@

clean:
	$(LATEXMK) -c -outdir=build $(PAPER).tex
