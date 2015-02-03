# DuckDuckGo [![Build Status](https://travis-ci.org/mwhittaker/duckduckgo-ocaml.svg?branch=master)](https://travis-ci.org/mwhittaker/duckduckgo-ocaml)

This repository contains [Async][rwo_async] integrated OCaml bindings for the
[DuckDuckGo API][duckduckgo_api].

## Getting Started ##
The [`DuckDuckGo` module][doc_duckduckgo] exports three functions you can use
to issue DuckDuckGo queries.

1. [`query`][doc_query] which returns a `string`
2. [`query_json`][doc_query_json] which returns a `Yojson.Basic.json`
3. [`query_record`][doc_query_record] which returns a
   [`DuckDuckGo.response`][doc_response]

We can use `query_record` to query DuckDuckGo about OCaml. Here's
`query_record`'s simplified type:

```ocaml
string -> (DuckDuckGo.response, exn) Core.Std.Result.t Async.Std.Deferred.t
```

`query_record` takes in a query string and returns a deferred
`DuckDuckGo.response` result. We can use Async's `try_with` to unwrap the
result and print the response of the query.

```ocaml
DuckDuckGo.query_record "ocaml" >>| function
| Ok response -> print_endline response.abstract
| Error _     -> print_endline "no abstract found"
```
For more complete examples, please refer to [the examples directory](/examples).

## Documentation ##
Documentation can be found online at
[http://mwhittaker.github.io/duckduckgo-ocaml/][doc_github]. Alternatively,
you can build the documentation yourself:

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
- [Real World OCaml JSON Parsing][rwo_json]
- [Real World OCaml Async][rwo_async]
- [Real World Ocaml DuckDuckGo Search][rwo_duckduckgo]
- [`atdgen` Documentation][atdgen]
- [OCaml and Travis][ocaml_travis]

[atdgen]:           https://mjambon.github.io/atdgen-doc/
[doc_duckduckgo]:   http://mwhittaker.github.io/duckduckgo-ocaml/DuckDuckGo.html
[doc_github]:       http://mwhittaker.github.io/duckduckgo-ocaml
[doc_query]:        http://mwhittaker.github.io/duckduckgo-ocaml/Query.html#VALquery
[doc_query_json]:   http://mwhittaker.github.io/duckduckgo-ocaml/Query.html#VALquery_json
[doc_query_record]: http://mwhittaker.github.io/duckduckgo-ocaml/Query.html#VALquery_record
[doc_response]:     http://mwhittaker.github.io/duckduckgo-ocaml/Response_j.html#TYPEresponse
[duckduckgo_api]:   https://duckduckgo.com/api
[ocaml_travis]:     http://anil.recoil.org/2013/09/30/travis-and-ocaml.html
[rwo_async]:        https://realworldocaml.org/v1/en/html/concurrent-programming-with-async.html
[rwo_duckduckgo]:   https://github.com/realworldocaml/examples/blob/master/code/async/search.ml
[rwo_json]:         https://realworldocaml.org/v1/en/html/handling-json-data.html
