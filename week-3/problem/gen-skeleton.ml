let contents = "let med7 a b c d e f g = failwith \"To do: implement med7\";;
"

let () =
    let file = open_out "wk3prob.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;