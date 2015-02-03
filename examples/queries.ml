open Core.Std
open Async.Std
module DDG = DuckDuckGo

let query_example () : unit Deferred.t =
  DDG.query ~format:(JSON true) "simpsons characters"
  >>| function
  | Ok s -> print_endline s
  | Error e -> raise e

let query_json_example () : unit Deferred.t =
  DDG.query_json "simpsons characters"
  >>| function
  | Ok json -> print_endline (Yojson.Basic.pretty_to_string json)
  | Error e -> raise e

let query_record_example () : unit Deferred.t =
  DDG.query_record "simpsons characters"
  >>| function
  | Ok response -> print_endline (DDG.string_of_response response)
  | Error e -> raise e

let main () : unit Deferred.t =
  query_example () >>= fun () ->
  query_json_example () >>= fun () ->
  query_record_example ()

let () =
  Command.async_basic
    ~summary:"Demonstrate the three types of DuckDuckGo queries."
    Command.Spec.empty
    main
  |> Command.run
