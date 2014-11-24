let contents = "let mul_bin_pow n k = failwith \"To do: Implement mul_bin_pow\";;
"

let () =
    let file = open_out "wk7ex2.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;