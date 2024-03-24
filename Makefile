# SPDX-License-Identifier: MIT

# TODO: determine if these files can be automatically included by pandoc
SRC := welkin-standard.typ abstract.typ introduction.typ syntax.typ semantics.typ bootstrap.typ appendix.typ

all: pdf html
pdf:
	typst compile --format pdf src/welkin-standard.typ welkin-standard.pdf
html:
	cd src && pandoc --from typst --to html5 --no-highlight $(SRC) --output welkin-standard.html && mv welkin-standard.html .. && cd ..

