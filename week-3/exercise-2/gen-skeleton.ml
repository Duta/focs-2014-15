let contents = "
let sort4 (a, b, c, d) = failwith \"To do: implement sort4\";;
"

let () =
    let file = open_out "wk3ex2.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;