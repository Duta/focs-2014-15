let contents = "let mul_bin xs ys = failwith \"To do: Implement mul_bin\";;
"

let () =
    let file = open_out "wk7prob.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;