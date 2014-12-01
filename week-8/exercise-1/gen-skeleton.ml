let contents = "let check_exp = failwith \"To do: Implement check_exp\";;
"

let () =
    let file = open_out "wk8ex1.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;