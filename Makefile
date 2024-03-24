all: pdf html
pdf:
	typst compile --format pdf src/welkin-standard.typ welkin-standard.pdf
html:
	pandoc --from typst --to html5 --no-highlight src/welkin-standard.typ --output welkin-standard.html

