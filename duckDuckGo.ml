open Core.Std
open Async.Std

type pretty = bool
type format =
  | JSON of pretty
  | XML

let query_uri ?(format=JSON false) ?(no_redirect=false) ?(no_html=false) ?(skip_disambig=false) (query: string) : Uri.t =
  let uri = Uri.of_string "http://api.duckduckgo.com/" in
  let uri = Uri.add_query_param uri ("q", [query]) in
  let uri = if no_redirect   then Uri.add_query_param uri ("no_redirect",   ["1"]) else uri in
  let uri = if no_html       then Uri.add_query_param uri ("no_html",       ["1"]) else uri in
  let uri = if skip_disambig then Uri.add_query_param uri ("skip_disambig", ["1"]) else uri in

  let uri =
    match format with
    | XML    -> Uri.add_query_param uri ("format", ["xml"])
    | JSON b->
        let uri = Uri.add_query_param uri ("format", ["json"]) in
        if b then Uri.add_query_param uri ("pretty", ["1"]) else uri
  in

  uri

let query ?(format=JSON false) ?(no_redirect=false) ?(no_html=false) ?(skip_disambig=false) query =
  query_uri ~format ~no_redirect ~no_html ~skip_disambig query |>
  Cohttp_async.Client.get >>= fun (_, body) ->
  Pipe.to_list (Cohttp_async.Body.to_pipe body) >>| fun strings ->
  String.concat strings

let query_to_json ?(no_redirect=false) ?(no_html=false) ?(skip_disambig=false) query =
  query_uri ~format:(JSON false) ~no_redirect ~no_html ~skip_disambig query |>
  Cohttp_async.Client.get >>= fun (_, body) ->
  Pipe.to_list (Cohttp_async.Body.to_pipe body) >>| fun strings ->
  String.concat strings |> Yojson.Basic.from_string
