open Core.Std
open Async.Std

let main () : unit Deferred.t =
  let open DuckDuckGo in
  query ~format:(JSON true) "simpsons characters"
  >>| print_endline

let () =
  don't_wait_for (main ());
  never_returns (Scheduler.go ())
