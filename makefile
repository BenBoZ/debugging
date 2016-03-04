# Makefile

BUILD_FOLDER=$(CURDIR)/bld

PAPER=src/paper.md
OUTPUT=paper.pdf


all: init clean doc

doc: $(PAPER) 
	pandoc -S -o $(OUTPUT) --filter pandoc-citeproc $(PAPER)

init:
	@command -v pandoc > /dev/null 2>&1 || (echo 'pandoc not found http://johnmacfarlane.net/pandoc/installing.html' && exit 1)

clean:
	rm -rf $(BUILD_FOLDER)/*

.PHONY: init clean
