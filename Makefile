all: pdf html
pdf:
	typst compile src/welkin-standard.typ --format pdf
html:
	pandoc --from typst --to html5 --no-highlight src/welkin-standard.typ --output welkin-standard.html

