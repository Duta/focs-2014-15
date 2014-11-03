let contents = "let prefix xs ys = failwith \"To do: implement prefix\";;
"

let () =
    let file = open_out "wk4ex2.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;