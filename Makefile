SOURCE = source
HTML = core

# SOURCE_NAMES = index abstract introduction syntax semantics bootstrap
SOURCE_FILES = $(wildcard $(SOURCE)/*.creole)

HTML_FILES = $(patsubst %.creole,%.html,$(subst $(SOURCE), $(HTML), $(SOURCE_FILES)))

all: multi-page single-page

multi-page: $(HTML_FILES)

$(HTML)/%.html: $(SOURCE)/%.creole
	@pandoc --from creole $< --to html --output $@

single-page: multi-page
	cat $(HTML_FILES) > welkin-standard.html 

.PHONY: clean
clean:
	rm -r $(HTML)/*.html
	rm welkin-standard.html
