let contents = "(* Write the following function: *)

(* val is_bij : (bool -> bool) -> bool *)
let is_bij f = failwith \"Not completed\";;"

let () =
    let file = open_out "wk2prob.ml" in
    Printf.fprintf file "%s\n" contents;
    close_out file;;

