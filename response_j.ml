(* Auto-generated from "response.atd" *)


type response_category = Response_t.response_category

type json = Yojson.Basic.json

type response = Response_t.response = {
  abstract: string;
  abstract_text: string;
  abstract_source: string;
  abstract_url: string;
  image: string;
  heading: string;
  answer: string;
  answer_type: string;
  definition: string;
  definition_source: string;
  definition_url: string;
  related_topics: json list;
  results: json list;
  typ: response_category;
  redirect: string
}

type icon = Response_t.icon = { url: string; height: json; width: json }

let write_response_category = (
  fun ob sum ->
    match sum with
      | `Article -> Bi_outbuf.add_string ob "<\"A\">"
      | `Disambiguation -> Bi_outbuf.add_string ob "<\"D\">"
      | `Category -> Bi_outbuf.add_string ob "<\"C\">"
      | `Name -> Bi_outbuf.add_string ob "<\"N\">"
      | `Exclusive -> Bi_outbuf.add_string ob "<\"E\">"
      | `Nothing -> Bi_outbuf.add_string ob "<\"\">"
)
let string_of_response_category ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_response_category ob x;
  Bi_outbuf.contents ob
let read_response_category = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          Yojson.Safe.read_space p lb;
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              try
                match len with
                  | 0 -> (
                      5
                    )
                  | 1 -> (
                      match String.unsafe_get s pos with
                        | 'A' -> (
                            0
                          )
                        | 'C' -> (
                            2
                          )
                        | 'D' -> (
                            1
                          )
                        | 'E' -> (
                            4
                          )
                        | 'N' -> (
                            3
                          )
                        | _ -> (
                            raise (Exit)
                          )
                    )
                  | _ -> (
                      raise (Exit)
                    )
              with Exit -> (
                  Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
                )
          in
          let i = Yojson.Safe.map_ident p f lb in
          match i with
            | 0 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Article
            | 1 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Disambiguation
            | 2 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Category
            | 3 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Name
            | 4 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Exclusive
            | 5 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Nothing
            | _ -> (
                assert false
              )
        )
      | `Double_quote -> (
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              try
                match len with
                  | 0 -> (
                      5
                    )
                  | 1 -> (
                      match String.unsafe_get s pos with
                        | 'A' -> (
                            0
                          )
                        | 'C' -> (
                            2
                          )
                        | 'D' -> (
                            1
                          )
                        | 'E' -> (
                            4
                          )
                        | 'N' -> (
                            3
                          )
                        | _ -> (
                            raise (Exit)
                          )
                    )
                  | _ -> (
                      raise (Exit)
                    )
              with Exit -> (
                  Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
                )
          in
          let i = Yojson.Safe.map_string p f lb in
          match i with
            | 0 ->
              `Article
            | 1 ->
              `Disambiguation
            | 2 ->
              `Category
            | 3 ->
              `Name
            | 4 ->
              `Exclusive
            | 5 ->
              `Nothing
            | _ -> (
                assert false
              )
        )
      | `Square_bracket -> (
          Yojson.Safe.read_space p lb;
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
          in
          let i = Yojson.Safe.map_ident p f lb in
          match i with
            | _ -> (
                assert false
              )
        )
)
let response_category_of_string s =
  read_response_category (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_json = (
  Yojson.Basic.write_json
)
let string_of_json ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_json ob x;
  Bi_outbuf.contents ob
let read_json = (
  Yojson.Basic.read_json
)
let json_of_string s =
  read_json (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__1 = (
  Ag_oj_run.write_list (
    write_json
  )
)
let string_of__1 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__1 ob x;
  Bi_outbuf.contents ob
let read__1 = (
  Ag_oj_run.read_list (
    read_json
  )
)
let _1_of_string s =
  read__1 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_response : _ -> response -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"Abstract\":";
    (
      Yojson.Safe.write_string
    )
      ob x.abstract;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"AbstractText\":";
    (
      Yojson.Safe.write_string
    )
      ob x.abstract_text;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"AbstractSource\":";
    (
      Yojson.Safe.write_string
    )
      ob x.abstract_source;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"AbstractURL\":";
    (
      Yojson.Safe.write_string
    )
      ob x.abstract_url;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"Image\":";
    (
      Yojson.Safe.write_string
    )
      ob x.image;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"Heading\":";
    (
      Yojson.Safe.write_string
    )
      ob x.heading;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"Answer\":";
    (
      Yojson.Safe.write_string
    )
      ob x.answer;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"AnswerType\":";
    (
      Yojson.Safe.write_string
    )
      ob x.answer_type;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"Definition\":";
    (
      Yojson.Safe.write_string
    )
      ob x.definition;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"DefinitionSource\":";
    (
      Yojson.Safe.write_string
    )
      ob x.definition_source;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"DefinitionURL\":";
    (
      Yojson.Safe.write_string
    )
      ob x.definition_url;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"RelatedTopics\":";
    (
      write__1
    )
      ob x.related_topics;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"Results\":";
    (
      write__1
    )
      ob x.results;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"Type\":";
    (
      write_response_category
    )
      ob x.typ;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"Redirect\":";
    (
      Yojson.Safe.write_string
    )
      ob x.redirect;
    Bi_outbuf.add_char ob '}';
)
let string_of_response ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_response ob x;
  Bi_outbuf.contents ob
let read_response = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_abstract = ref (Obj.magic 0.0) in
    let field_abstract_text = ref (Obj.magic 0.0) in
    let field_abstract_source = ref (Obj.magic 0.0) in
    let field_abstract_url = ref (Obj.magic 0.0) in
    let field_image = ref (Obj.magic 0.0) in
    let field_heading = ref (Obj.magic 0.0) in
    let field_answer = ref (Obj.magic 0.0) in
    let field_answer_type = ref (Obj.magic 0.0) in
    let field_definition = ref (Obj.magic 0.0) in
    let field_definition_source = ref (Obj.magic 0.0) in
    let field_definition_url = ref (Obj.magic 0.0) in
    let field_related_topics = ref (Obj.magic 0.0) in
    let field_results = ref (Obj.magic 0.0) in
    let field_typ = ref (Obj.magic 0.0) in
    let field_redirect = ref (Obj.magic 0.0) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 4 -> (
                if String.unsafe_get s pos = 'T' && String.unsafe_get s (pos+1) = 'y' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 'e' then (
                  13
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'I' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'g' && String.unsafe_get s (pos+4) = 'e' then (
                  4
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'A' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' then (
                  6
                )
                else (
                  -1
                )
              )
            | 7 -> (
                match String.unsafe_get s pos with
                  | 'H' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'd' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'g' then (
                        5
                      )
                      else (
                        -1
                      )
                    )
                  | 'R' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 's' then (
                        12
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 8 -> (
                match String.unsafe_get s pos with
                  | 'A' -> (
                      if String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' then (
                        0
                      )
                      else (
                        -1
                      )
                    )
                  | 'R' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' then (
                        14
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 10 -> (
                match String.unsafe_get s pos with
                  | 'A' -> (
                      if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'T' && String.unsafe_get s (pos+7) = 'y' && String.unsafe_get s (pos+8) = 'p' && String.unsafe_get s (pos+9) = 'e' then (
                        7
                      )
                      else (
                        -1
                      )
                    )
                  | 'D' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'n' then (
                        8
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 11 -> (
                if String.unsafe_get s pos = 'A' && String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'U' && String.unsafe_get s (pos+9) = 'R' && String.unsafe_get s (pos+10) = 'L' then (
                  3
                )
                else (
                  -1
                )
              )
            | 12 -> (
                if String.unsafe_get s pos = 'A' && String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'T' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'x' && String.unsafe_get s (pos+11) = 't' then (
                  1
                )
                else (
                  -1
                )
              )
            | 13 -> (
                match String.unsafe_get s pos with
                  | 'D' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'U' && String.unsafe_get s (pos+11) = 'R' && String.unsafe_get s (pos+12) = 'L' then (
                        10
                      )
                      else (
                        -1
                      )
                    )
                  | 'R' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = 'T' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'p' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'c' && String.unsafe_get s (pos+12) = 's' then (
                        11
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 14 -> (
                if String.unsafe_get s pos = 'A' && String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'S' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'u' && String.unsafe_get s (pos+11) = 'r' && String.unsafe_get s (pos+12) = 'c' && String.unsafe_get s (pos+13) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 16 -> (
                if String.unsafe_get s pos = 'D' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'S' && String.unsafe_get s (pos+11) = 'o' && String.unsafe_get s (pos+12) = 'u' && String.unsafe_get s (pos+13) = 'r' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'e' then (
                  9
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Ag_oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_abstract := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_abstract_text := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_abstract_source := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 3 ->
            field_abstract_url := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x8;
          | 4 ->
            field_image := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x10;
          | 5 ->
            field_heading := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x20;
          | 6 ->
            field_answer := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x40;
          | 7 ->
            field_answer_type := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x80;
          | 8 ->
            field_definition := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x100;
          | 9 ->
            field_definition_source := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x200;
          | 10 ->
            field_definition_url := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x400;
          | 11 ->
            field_related_topics := (
              (
                read__1
              ) p lb
            );
            bits0 := !bits0 lor 0x800;
          | 12 ->
            field_results := (
              (
                read__1
              ) p lb
            );
            bits0 := !bits0 lor 0x1000;
          | 13 ->
            field_typ := (
              (
                read_response_category
              ) p lb
            );
            bits0 := !bits0 lor 0x2000;
          | 14 ->
            field_redirect := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x4000;
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 4 -> (
                  if String.unsafe_get s pos = 'T' && String.unsafe_get s (pos+1) = 'y' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 'e' then (
                    13
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'I' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'g' && String.unsafe_get s (pos+4) = 'e' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'A' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  match String.unsafe_get s pos with
                    | 'H' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'd' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'g' then (
                          5
                        )
                        else (
                          -1
                        )
                      )
                    | 'R' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 's' then (
                          12
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 8 -> (
                  match String.unsafe_get s pos with
                    | 'A' -> (
                        if String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' then (
                          0
                        )
                        else (
                          -1
                        )
                      )
                    | 'R' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' then (
                          14
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 10 -> (
                  match String.unsafe_get s pos with
                    | 'A' -> (
                        if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'T' && String.unsafe_get s (pos+7) = 'y' && String.unsafe_get s (pos+8) = 'p' && String.unsafe_get s (pos+9) = 'e' then (
                          7
                        )
                        else (
                          -1
                        )
                      )
                    | 'D' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'n' then (
                          8
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 11 -> (
                  if String.unsafe_get s pos = 'A' && String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'U' && String.unsafe_get s (pos+9) = 'R' && String.unsafe_get s (pos+10) = 'L' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 12 -> (
                  if String.unsafe_get s pos = 'A' && String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'T' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'x' && String.unsafe_get s (pos+11) = 't' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  match String.unsafe_get s pos with
                    | 'D' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'U' && String.unsafe_get s (pos+11) = 'R' && String.unsafe_get s (pos+12) = 'L' then (
                          10
                        )
                        else (
                          -1
                        )
                      )
                    | 'R' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = 'T' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'p' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'c' && String.unsafe_get s (pos+12) = 's' then (
                          11
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 14 -> (
                  if String.unsafe_get s pos = 'A' && String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'S' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'u' && String.unsafe_get s (pos+11) = 'r' && String.unsafe_get s (pos+12) = 'c' && String.unsafe_get s (pos+13) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 16 -> (
                  if String.unsafe_get s pos = 'D' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'S' && String.unsafe_get s (pos+11) = 'o' && String.unsafe_get s (pos+12) = 'u' && String.unsafe_get s (pos+13) = 'r' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'e' then (
                    9
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Ag_oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_abstract := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_abstract_text := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_abstract_source := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 3 ->
              field_abstract_url := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x8;
            | 4 ->
              field_image := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x10;
            | 5 ->
              field_heading := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x20;
            | 6 ->
              field_answer := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x40;
            | 7 ->
              field_answer_type := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x80;
            | 8 ->
              field_definition := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x100;
            | 9 ->
              field_definition_source := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x200;
            | 10 ->
              field_definition_url := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x400;
            | 11 ->
              field_related_topics := (
                (
                  read__1
                ) p lb
              );
              bits0 := !bits0 lor 0x800;
            | 12 ->
              field_results := (
                (
                  read__1
                ) p lb
              );
              bits0 := !bits0 lor 0x1000;
            | 13 ->
              field_typ := (
                (
                  read_response_category
                ) p lb
              );
              bits0 := !bits0 lor 0x2000;
            | 14 ->
              field_redirect := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x4000;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x7fff then Ag_oj_run.missing_fields p [| !bits0 |] [| "abstract"; "abstract_text"; "abstract_source"; "abstract_url"; "image"; "heading"; "answer"; "answer_type"; "definition"; "definition_source"; "definition_url"; "related_topics"; "results"; "typ"; "redirect" |];
        (
          {
            abstract = !field_abstract;
            abstract_text = !field_abstract_text;
            abstract_source = !field_abstract_source;
            abstract_url = !field_abstract_url;
            image = !field_image;
            heading = !field_heading;
            answer = !field_answer;
            answer_type = !field_answer_type;
            definition = !field_definition;
            definition_source = !field_definition_source;
            definition_url = !field_definition_url;
            related_topics = !field_related_topics;
            results = !field_results;
            typ = !field_typ;
            redirect = !field_redirect;
          }
         : response)
      )
)
let response_of_string s =
  read_response (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_icon : _ -> icon -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"URL\":";
    (
      Yojson.Safe.write_string
    )
      ob x.url;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"Height\":";
    (
      write_json
    )
      ob x.height;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"Width\":";
    (
      write_json
    )
      ob x.width;
    Bi_outbuf.add_char ob '}';
)
let string_of_icon ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_icon ob x;
  Bi_outbuf.contents ob
let read_icon = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_url = ref (Obj.magic 0.0) in
    let field_height = ref (Obj.magic 0.0) in
    let field_width = ref (Obj.magic 0.0) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'U' && String.unsafe_get s (pos+1) = 'R' && String.unsafe_get s (pos+2) = 'L' then (
                  0
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'W' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'h' then (
                  2
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'H' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'g' && String.unsafe_get s (pos+4) = 'h' && String.unsafe_get s (pos+5) = 't' then (
                  1
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Ag_oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_url := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_height := (
              (
                read_json
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_width := (
              (
                read_json
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'U' && String.unsafe_get s (pos+1) = 'R' && String.unsafe_get s (pos+2) = 'L' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'W' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'h' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'H' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'g' && String.unsafe_get s (pos+4) = 'h' && String.unsafe_get s (pos+5) = 't' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Ag_oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_url := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_height := (
                (
                  read_json
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_width := (
                (
                  read_json
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x7 then Ag_oj_run.missing_fields p [| !bits0 |] [| "url"; "height"; "width" |];
        (
          {
            url = !field_url;
            height = !field_height;
            width = !field_width;
          }
         : icon)
      )
)
let icon_of_string s =
  read_icon (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
