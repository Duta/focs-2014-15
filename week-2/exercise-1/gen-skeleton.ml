let contents = "(* Write the following function: *)

(* val int_of_day : weekday -> int *)
let int_of_day day = failwith \"Not completed\";;"

let () =
    let file = open_out "wk2ex1.ml" in
    Printf.fprintf file "%s\n" contents;
    close_out file;

