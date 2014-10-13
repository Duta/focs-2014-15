let contents = "(* Write the following function: *)

(* val days_of_october : int -> weekday *)
let days_of_october date = failwith \"Not completed\";;"

let () =
    let file = open_out "wk2ex2.ml" in
    Printf.fprintf file "%s\n" contents;
    close_out file;

