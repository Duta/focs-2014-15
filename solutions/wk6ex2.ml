let rec map_non_empties f = function
  | [] -> []
  | []::xss -> map_non_empties f xss
  | (x::xs)::xss -> f x xs::map_non_empties f xss;;

let heads xss = map_non_empties (fun x xs -> x ) xss;;
let tails xss = map_non_empties (fun x xs -> xs) xss;;

let rec interleave = function
  | [] -> []
  | []::xs -> interleave xs
  | xs -> heads xs @ interleave (tails xs);;
