
type pretty = bool
type format =
  | JSON of pretty
  | XML

val query:
  ?format:format ->
  ?no_redirect:bool ->
  ?no_html:bool ->
  ?skip_disambig:bool ->
  string ->
  string Async.Std.Deferred.t

val query_to_json:
  ?no_redirect:bool ->
  ?no_html:bool ->
  ?skip_disambig:bool ->
  string ->
  Yojson.Basic.json Async.Std.Deferred.t
