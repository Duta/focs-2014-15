let every n =
  let rec every' i xs = match i, xs with
    | _, []     -> []
    | 1, x::xs' -> x::every' n     xs'
    | _, x::xs' ->    every' (i-1) xs'
  in every' n;;
