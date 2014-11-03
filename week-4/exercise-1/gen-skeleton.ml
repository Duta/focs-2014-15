let contents = "let member x xs = failwith \"To do: implement member\";;
"

let () =
    let file = open_out "wk4ex1.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;