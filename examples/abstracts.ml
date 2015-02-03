open Core.Std
open Async.Std
module DDG = DuckDuckGo

let underline (s: string) : string =
  let e = 1 in
  String.map s ~f:(fun _ -> '=')

let wrap (s: string) : string =
  String.concat ~sep:"\n" (Wrapper.wrap (Wrapper.make 80) s)

let abstract (word: string) : string Deferred.t =
  let not_found = "Abstract not found." in

  DDG.query_record word >>| fun r ->
  match r with
  | Ok r -> if r.abstract = "" then not_found else r.abstract
  | Error _ -> not_found

let main words () : unit Deferred.t =
  match words with
  | [] -> begin
    printf "> ";
    (Reader.pipe (Lazy.force Reader.stdin))
    |> Pipe.iter ~f:(fun w ->
        abstract w >>|
        fun a -> (printf "%s\n%s\n\n" (underline w) (wrap a); printf "> "))
  end
  | words -> begin
    List.map words ~f:(fun w ->
      abstract w >>| fun a ->
      sprintf "%s\n%s\n%s" w (underline w) (wrap a))
    |> Deferred.List.all >>| fun s ->
    print_endline (String.concat ~sep:"\n\n" s)
  end

let () =
  Command.async_basic
    ~summary:"Print abstracts from DuckDuckGo"
    Command.Spec.(
      empty
      +> anon (sequence (("words" %: file)))
    )
    main
  |> Command.run
