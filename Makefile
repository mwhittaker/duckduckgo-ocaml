.PHONY: lib examples doc clean

all: lib examples doc

lib:
	cd lib && make

examples:
	cd examples && make

doc:
	ocamlbuild -use-ocamlfind -cflag -thread -package atdgen,async,uri,yojson,core,cohttp.async -docflag -sort -docflag -thread -I lib doc/doc.docdir/index.html

clean:
	cd lib && make clean
	cd examples && make clean
	! test -d _build     || rm -rf _build
	! test -L doc.docdir || rm -f  doc.docdir
