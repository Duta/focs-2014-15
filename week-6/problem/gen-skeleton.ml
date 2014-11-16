let contents = "let components pairs = failwith \"To do: Implement components\";;
"

let () =
    let file = open_out "wk6prob.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;