open Common;;

let rec drop_lefts = function
  | O::state -> drop_lefts state
  | L::state -> drop_lefts state
  | state -> state;;

let rec only_rights = function
  | L::_ -> false
  | _::state -> only_rights state
  | _ -> true;;

let winning state = only_rights (drop_lefts state);;
