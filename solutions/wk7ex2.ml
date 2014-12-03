let rec nfalse = function
  | 0 -> []
  | n -> false :: (nfalse (n - 1));;

let mul_bin_pow n k = (nfalse k) @ n;;
