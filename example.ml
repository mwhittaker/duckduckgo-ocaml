open Core.Std
open Async.Std

let query_example () : unit Deferred.t =
  let open DuckDuckGo in
  query ~format:(JSON true) "simpsons characters"
  >>| function
  | Ok s -> print_endline s
  | Error e -> raise e

let query_json_example () : unit Deferred.t =
  let open DuckDuckGo in
  query_json "simpsons characters"
  >>| function
  | Ok json -> print_endline (Yojson.Basic.pretty_to_string json)
  | Error e -> raise e

let query_record_example () : unit Deferred.t =
  let open DuckDuckGo in
  query_record "simpsons characters"
  >>| function
  | Ok response -> print_endline (Response_j.string_of_response response)
  | Error e -> raise e

let main () : unit Deferred.t =
  query_example () >>= fun () ->
  query_json_example () >>= fun () ->
  query_record_example ()

let () =
  don't_wait_for (main ());
  never_returns (Scheduler.go ())
