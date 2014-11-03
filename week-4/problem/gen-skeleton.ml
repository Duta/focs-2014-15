let contents = "let prefixes xs = failwith \"To do: implement prefixes\";;
"

let () =
    let file = open_out "wk4prob.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;