let contents = "open Common;;

let has_solution state = failwith \"To do: Implement has_solution\";;
"

let () =
    let file = open_out "wk5prob.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;