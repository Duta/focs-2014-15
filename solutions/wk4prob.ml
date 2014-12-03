let rec prefixes' p = function
  | [] -> [p]
  | h::xs -> p::prefixes' (p @ [h]) xs;;

let prefixes xs = prefixes' [] xs;;
