open List;;

let sort_asc xs = sort compare xs;;

let rec elim_consec = function 
  | x::x'::xs -> if x = x'
    then    elim_consec (x'::xs) 
    else x::elim_consec (x'::xs)
  | xs        -> xs;;

let rec elim_dupls xs = xs |> sort_asc |> elim_consec;;

let combine xs ys = elim_dupls (rev_append xs ys);;

let rec expand x rdmp vstd = match rdmp with 
  | []          -> []
  | (y, y')::ys -> if x <> y && x <> y' 
    then expand x ys vstd
    else let x' = if x = y then y' else y in 
         if mem x' vstd 
         then     expand x ys     vstd
         else x'::expand x ys (x::vstd);;

let rec has_path src trgt rdmp vstd = match src with 
  | []    -> false
  | x::xs -> 
    mem x trgt ||
      let src' = combine xs (expand x rdmp vstd) in 
      has_path src' trgt rdmp (x::vstd);;

let get_nodes graph =
  let rec get_nodes' = function
    | []          -> []
    | (x, y)::xys -> x::y::get_nodes' xys
  in graph |> get_nodes' |> elim_dupls;;

let components graph =
  let rec components' comps = function
    | []    -> comps
    | x::xs ->
      let comp  = filter (fun z -> has_path [x] [z] graph []) (x::xs) in
      let nodes = filter (fun z -> not (mem z comp))              xs  in
      components' (comp::comps) nodes
  in
  components' [] (get_nodes graph);;