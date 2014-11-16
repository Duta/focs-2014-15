let contents = "let interleave xss = failwith \"To do: Implement interleave\";;
"

let () =
    let file = open_out "wk6ex2.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;