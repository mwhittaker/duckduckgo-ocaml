PKGS = atdgen,async,uri,yojson,cohttp.async

EXAMPLES = $(wildcard *.ml)

BYTES = $(EXAMPLES:%.ml=%.byte)

all: $(BYTES)

%.byte: %.ml
	corebuild -pkg $(PKGS) -I lib $@

%.native: %.ml
	corebuild -pkg $(PKGS) -I lib $@

.PHONY: clean
clean:
	! test -d _build       || rm -rf _build
	rm -rf *.byte
