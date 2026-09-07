.DEFAULT_GOAL := build

.PHONY: all build watch clean help

CJK_CACHE := $(CURDIR)/build/texmf-var
CJK_ENV := TEXMFVAR=$(CJK_CACHE) TEXMFCACHE=$(CJK_CACHE)
LATEXMK := $(CJK_ENV) latexmk -lualatex -synctex=1 -interaction=nonstopmode -halt-on-error -file-line-error

all: build

build:
	@mkdir -p $(CJK_CACHE)
	$(LATEXMK) $(if $(FORCE),-g) main.tex

watch:
	@mkdir -p $(CJK_CACHE)
	$(LATEXMK) -pvc main.tex

clean:
	$(CJK_ENV) latexmk -C main.tex

help:
	@echo "make        compile main.tex with LuaLaTeX"
	@echo "make watch  continuously compile on changes"
	@echo "make clean  remove build products"
