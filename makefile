# Makefile

BUILD_FOLDER=$(CURDIR)/bld

PAPER=src/paper.md
OUTPUT=Debugging_What_you_should_know

SVGS=$(wildcard src/img/*.svg)
IMAGES=$(SVGS:.svg=.pdf)

all: pdf
full: init clean directories pdf

directories:
	@mkdir -p $(BUILD_FOLDER)

pdf: $(IMAGES) $(PAPER) 
	@echo "Generating doc $(OUTPUT)"
	@pandoc -S -o bld/$(OUTPUT).pdf --filter pandoc-citeproc $(PAPER)

%.pdf: %.svg
	@echo "Converting $< to $(subst src/img/,,$@)"
	@convert -density 343 $< bld/$(subst src/img/,,$@)

init:
	@command -v pandoc > /dev/null 2>&1 || (echo 'pandoc not found http://johnmacfarlane.net/pandoc/installing.html' && exit 1)
	@command -v pandoc-citeproc > /dev/null 2>&1 || (echo 'pandoc-citeproc not found http://johnmacfarlane.net/pandoc/installing.html' && exit 1)
	@command -v convert > /dev/null 2>&1 || (echo 'ImageMagick required for converting images' && exit 1)

clean:
	@echo "Cleaning build folder: $(BUILD_FOLDER)"
	@rm -rf $(BUILD_FOLDER)/*

.PHONY: init clean
