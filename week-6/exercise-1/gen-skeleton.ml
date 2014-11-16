let contents = "let every n xs = failwith \"To do: Implement every\";;
"

let () =
    let file = open_out "wk6ex1.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;