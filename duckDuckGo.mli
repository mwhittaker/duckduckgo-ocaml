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
  (string, exn) Core.Std.Result.t Async.Std.Deferred.t

val query_json:
  ?no_redirect:bool ->
  ?no_html:bool ->
  ?skip_disambig:bool ->
  string ->
  (Yojson.Basic.json, exn) Core.Std.Result.t Async.Std.Deferred.t

val query_record:
  ?no_redirect:bool ->
  ?no_html:bool ->
  ?skip_disambig:bool ->
  string ->
  (Response_t.response, exn) Core.Std.Result.t Async.Std.Deferred.t
