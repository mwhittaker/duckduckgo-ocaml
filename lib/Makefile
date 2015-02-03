ML   = duckDuckGo
EX   = example
PKGS = atdgen,async,uri,yojson,cohttp.async
ATD  = response

all: $(ML).byte

$(ATD)_t.ml: $(ATD).atd
	atdgen -t response.atd

$(ATD)_j.ml: $(ATD).atd
	atdgen -j response.atd

%.byte: %.ml $(ATD)_t.ml $(ATD)_j.ml
	corebuild -pkg $(PKGS) $@

%.native: %.ml $(ATD)_t.ml $(ATD)_j.ml
	corebuild -pkg $(PKGS) %@

.PHONY: clean
clean:
	! test -d _build       || rm -rf _build
	! test -L $(ML).byte   || rm -f $(ML).byte
	! test -L $(ML).native || rm -f $(ML).native
	! test -L $(EX).byte   || rm -f $(EX).byte
	! test -L $(EX).native || rm -f $(EX).native
