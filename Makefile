SOURCE = source
OUTPUT = core

SOURCE_FILES = $(wildcard $(SOURCE)/*.creole)

HTML_FILES = $(patsubst %.creole,%.html,$(subst $(SOURCE), $(OUTPUT), $(SOURCE_FILES)))

all: multi-page single-page

multi-page: $(HTML_FILES)

$(OUTPUT)/%.html: $(SOURCE)/%.creole
	@pandoc --from creole $< --to html --output $@

single-page: multi-page
	cat $(HTML_FILES) > welkin-standard.html 

# clean:
# 	rm -r $(HTML)/*.html
