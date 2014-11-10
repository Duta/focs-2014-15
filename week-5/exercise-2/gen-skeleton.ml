let contents = "open Common;;

let is_move initial result = failwith \"To do: implement is_move\";;
"

let () =
    let file = open_out "wk5ex2.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;