let add_3 b1 b2 b3 = match b1, b2, b3 with
  | true, true, true -> true, true
  | true, true, false
  | true, false, true
  | false, true, true -> true, false
  | true, false, false
  | false, true, false
  | false, false, true -> false, true
  | false, false, false -> false, false;;

let rec add_bin' n1 n2 carry = match n1, n2 with
  | [], [] -> [carry]
  | [], n2 -> add_bin' [false] n2 carry
  | n1, [] -> add_bin' n1 [false] carry
  | d1 :: d1s, d2 :: d2s ->
        let (carry, d) = add_3 d1 d2 carry in
        d :: (add_bin' d1s d2s carry);;

let rec add_bin n1 n2 = add_bin' n1 n2 false;;

let add_bin_list = List.fold_left add_bin [false];;

let rec nfalse = function
  | 0 -> []
  | n -> false :: (nfalse (n - 1));;

let mul_bin_pow n k = (nfalse k) @ n;;

let rec bin_to_pows n = function
  | [] -> []
  | true :: ns -> n :: (bin_to_pows (n + 1) ns)
  | false :: ns -> (bin_to_pows (n + 1) ns);;

let shift bs ps = List.map (fun k -> mul_bin_pow bs k) ps;;

let rec mul_bin m n = add_bin_list (shift m (bin_to_pows 0 n));;
