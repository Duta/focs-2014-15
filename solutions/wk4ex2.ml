let rec prefix xs ys = match xs, ys with
  | [], _ -> true
  | _, [] -> false
  | (h::t), (h'::t') -> h == h' && prefix t t';;
