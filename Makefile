all: pdf html
pdf:
	typst compile welkin-standard.typst --format pdf
html:
	pandoc --from typst --to html5 --no-highlight welkin-standard.typst --output welkin-standard.html

