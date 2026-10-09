.DEFAULT_GOAL := build
.PHONY: build clean
build:
	latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
clean:
	latexmk -C main.tex
