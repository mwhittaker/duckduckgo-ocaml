# DuckDuckGo [![Build Status](https://travis-ci.org/mwhittaker/duckduckgo-ocaml.svg?branch=master)](https://travis-ci.org/mwhittaker/duckduckgo-ocaml)

This repository contains OCaml bindings for the [DuckDuckGo
API][duckduckgo_api].

## Getting Started ##

## Documentation ##
Documentation can be found online at
[http://mwhittaker.github.io/duckduckgo-ocaml/](http://mwhittaker.github.io/duckduckgo-ocaml/).
Alternatively, you can build the documentation yourself:

```bash
make doc && firefox doc.docdir/index.html
```

## Dependencies ##
- [`core`](http://opam.ocaml.org/packages/core/core.112.06.02/)
- [`async`](https://opam.ocaml.org/packages/async/async.112.06.00/)
- [`atdgen`](http://opam.ocaml.org/packages/atdgen/atdgen.1.5.0/)
- [`cohttp.async`](http://opam.ocaml.org/packages/cohttp/cohttp.0.15.1/)
- [`textwrap`](http://opam.ocaml.org/packages/textwrap/textwrap.0.1/)
- [`uri`](http://opam.ocaml.org/packages/uri/uri.1.7.2/)
- [`yojson`](http://opam.ocaml.org/packages/uri/uri.1.7.2/)

You can install these dependencies using `opam`:

```bash
opam install core async atdgen cohttp textwrap uri yojson
```

## Resources ##
- [DuckDuckGo API][duckduckgo_api]
- [Real World OCaml JSON Parsing](https://realworldocaml.org/v1/en/html/handling-json-data.html)
- [Real World OCaml Async](https://realworldocaml.org/v1/en/html/concurrent-programming-with-async.html)
- [Real World Ocaml DuckDuckGo Search](https://github.com/realworldocaml/examples/blob/master/code/async/search.ml)
- [`atdgen` Documentation](https://mjambon.github.io/atdgen-doc/)
- [OCaml and Travis](http://anil.recoil.org/2013/09/30/travis-and-ocaml.html)

[duckduckgo_api]: https://duckduckgo.com/api
