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
