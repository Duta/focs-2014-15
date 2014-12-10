let contents = "let med = failwith \"To do: Implement med\";;
"

let () =
    let file = open_out "wk9ex2.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;