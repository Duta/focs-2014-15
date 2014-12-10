let contents = "let avg = failwith \"To do: Implement avg\";;
"

let () =
    let file = open_out "wk9ex1.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;