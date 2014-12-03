let rec member x = function
  | [] -> false
  | h::t -> x == h || member x t;;
