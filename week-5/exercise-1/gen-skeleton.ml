let contents = "open Common;;

let winning state = failwith \"To do: implement winning\";;
"

let () =
    let file = open_out "wk5ex1.ml" in
    Printf.fprintf file "%s" contents;
    close_out file;;