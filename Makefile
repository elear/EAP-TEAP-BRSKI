
DOCS=	draft-lear-eap-teap-brski.txt \
	draft-lear-eap-teap-brski.xml \
	draft-lear-eap-teap-brski.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<


