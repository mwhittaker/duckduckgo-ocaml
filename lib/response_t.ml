(* Auto-generated from "response.atd" *)


(** DuckDuckGo Responses and JSON Serialization *)

type response_category = [
    `Article | `Disambiguation | `Category | `Name | `Exclusive | `Nothing
]

type json = Yojson.Basic.json

type response = {
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

type icon = { url: string; height: json; width: json }
