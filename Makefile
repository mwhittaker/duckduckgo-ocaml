ML   = duckDuckGo
EX   = example
PKGS = async,uri,yojson,cohttp.async

all: $(ML).byte

%.byte: %.ml
	corebuild -pkg $(PKGS) $@

%.native: %.ml
	corebuild -pkg $(PKGS) %@

.PHONY: clean
clean:
	! test -d _build       || rm -rf _build
	! test -L $(ML).byte   || rm -f $(ML).byte
	! test -L $(ML).native || rm -f $(ML).native
	! test -L $(EX).byte   || rm -f $(EX).byte
	! test -L $(EX).native || rm -f $(EX).native

