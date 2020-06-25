TITLE = "Beginning VHDL: A Hands-on Approach to Digital Design"
LOCAL_FONT_LOCATION = $(shell echo ~/.local/share/fonts/)
ASCIIDOCTOR_PDF_FLAGS = -a pdf-theme=./theme/custom-theme.yml -r ./tools/autoxref-treeprocessor.rb -r asciidoctor-mathematical ./src/main.adoc -a pdf-fontsdir="$(LOCAL_FONT_LOCATION),GEM_FONTS_DIR"
ASCIIDOCTOR_HTML_FLAGS = -a data-uri -a toc -a max-width=55em ./src/main.adoc

.PHONY: %.adoc

all: pdf

pdf: %.adoc
	asciidoctor-pdf $(ASCIIDOCTOR_PDF_FLAGS) -o $(TITLE).pdf
html:
	asciidoctor $(ASCIIDOCTOR_HTML_FLAGS) -o $(TITLE).html

zip:
	zip -r asciidoc_vhdl.zip ./ -x "./tools/pygments/*"

update-asciidoctor:
	gem update asciidoctor
