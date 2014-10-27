let contents = "let min8 (a, b, c, d, e, f, i, j) = failwith \"To do: implement min8\";;
"

let () =
    let file = open_out "wk3ex1.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;