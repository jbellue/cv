PAPER=main.tex
OUTPUT_DIR=docs/assets
OUTPUT_EN=cv-en
OUTPUT_FR=cv-fr

all: fr en
	@echo "done"
fr:
	pdflatex -output-directory=$(OUTPUT_DIR) -jobname=$(OUTPUT_FR) "\PassOptionsToPackage{english,main=french}{babel}\input{$(PAPER)}"
en:
	pdflatex -output-directory=$(OUTPUT_DIR) -jobname=$(OUTPUT_EN) "\PassOptionsToPackage{main=english,french}{babel}\input{$(PAPER)}"

clean:
	rm -f $(OUTPUT_DIR)/$(OUTPUT_EN).aux $(OUTPUT_DIR)/$(OUTPUT_EN).log $(OUTPUT_DIR)/$(OUTPUT_EN).out
	rm -f $(OUTPUT_DIR)/$(OUTPUT_FR).aux $(OUTPUT_DIR)/$(OUTPUT_FR).log $(OUTPUT_DIR)/$(OUTPUT_FR).out
	rm -f main.aux main.fdb_latexmk main.fls main.log main.out main.pdf main.synctex.gz

watch:
	while true; do \
		make $(WATCHMAKE); \
		inotifywait -qre close_write .; \
	done
