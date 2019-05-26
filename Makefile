PAPER=main.tex

all: fr en
	@echo "done"
fr:
	pdflatex  -output-directory=output -jobname=cv-fr "\PassOptionsToPackage{english,main=french}{babel}\input{$(PAPER)}"
en:
	pdflatex  -output-directory=output -jobname=cv-en "\PassOptionsToPackage{main=english,french}{babel}\input{$(PAPER)}"

clean:
	pdflatex -c
