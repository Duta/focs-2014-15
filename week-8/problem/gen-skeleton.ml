let contents = "let eval = failwith \"To do: Implement eval\";;
"

let () =
    let file = open_out "wk8prob.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;