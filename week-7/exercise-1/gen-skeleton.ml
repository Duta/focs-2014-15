let contents = "let add_bin_list xss = failwith \"To do: Implement add_bin_list\";;
"

let () =
    let file = open_out "wk7ex1.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;