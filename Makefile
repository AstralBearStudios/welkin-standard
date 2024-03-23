all: pdf html
pdf:
	typst compile welkin-standard.typ --format pdf
html:
	pandoc --from typst --to html5 --no-highlight welkin-standard.typ --output welkin-standard.html

