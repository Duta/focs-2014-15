let contents = "let most_freq = failwith \"To do: Implement most_freq\";;
"

let () =
    let file = open_out "wk9prob.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;