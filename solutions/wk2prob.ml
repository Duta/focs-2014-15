(* A couple that actually work: *)
let is_bij_good_1 f = match f true, f false with true, false | false, true ->
    true | _ -> false;;

let is_bij_good_2 f = f true <> f false;;

(* Some that don't: *)
let is_bij_bad_1 f = f true = f false;;

let is_bij_bad_2 f = true;;

let is_bij_bad_3 f = false;;

let is_bij = is_bij_good_2;;
