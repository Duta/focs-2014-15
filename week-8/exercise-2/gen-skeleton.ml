let contents = "let subst = failwith \"To do: Implement subst\";;
"

let () =
    let file = open_out "wk8ex2.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;