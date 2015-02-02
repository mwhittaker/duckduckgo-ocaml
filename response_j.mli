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

val write_response_category :
  Bi_outbuf.t -> response_category -> unit
  (** Output a JSON value of type {!response_category}. *)

val string_of_response_category :
  ?len:int -> response_category -> string
  (** Serialize a value of type {!response_category}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_response_category :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> response_category
  (** Input JSON data of type {!response_category}. *)

val response_category_of_string :
  string -> response_category
  (** Deserialize JSON data of type {!response_category}. *)

val write_json :
  Bi_outbuf.t -> json -> unit
  (** Output a JSON value of type {!json}. *)

val string_of_json :
  ?len:int -> json -> string
  (** Serialize a value of type {!json}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_json :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> json
  (** Input JSON data of type {!json}. *)

val json_of_string :
  string -> json
  (** Deserialize JSON data of type {!json}. *)

val write_response :
  Bi_outbuf.t -> response -> unit
  (** Output a JSON value of type {!response}. *)

val string_of_response :
  ?len:int -> response -> string
  (** Serialize a value of type {!response}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_response :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> response
  (** Input JSON data of type {!response}. *)

val response_of_string :
  string -> response
  (** Deserialize JSON data of type {!response}. *)

val write_icon :
  Bi_outbuf.t -> icon -> unit
  (** Output a JSON value of type {!icon}. *)

val string_of_icon :
  ?len:int -> icon -> string
  (** Serialize a value of type {!icon}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_icon :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> icon
  (** Input JSON data of type {!icon}. *)

val icon_of_string :
  string -> icon
  (** Deserialize JSON data of type {!icon}. *)

