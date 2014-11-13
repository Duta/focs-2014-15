(* This function takes the first n elements of a list *)

let rec take n xs = match n, xs with 
  | 0, _ -> []
  | n, (x:int) :: xs -> x :: (take (n - 1) xs)
  | _, _ -> failwith "take"
;;

take 2 [1;2;3;4;5] = [1; 2];;


(* This function removes the first n elements of a list *)

let rec drop n xs = match n, xs with 
  | 0, xs -> xs
  | n, x :: xs -> drop (n - 1) xs
  | _, _ -> failwith "drop"
;;

drop 3 [1;2;3;4;5] = [4; 5];;

(* This function 'rotates' the first n elements from the head to the tail *)

let rec rotate n xs =
  let hd = take n xs in 
  let tl = drop n xs in 
  tl @ hd
;;

rotate 3 [1;2;3;4;5] = [4; 5; 1; 2; 3];;

(* This function drops n elements from the tail *)
let rec drop' n xs = xs |> List.rev |> drop n |> List.rev;;

drop' 3 [1;2;3;4;5] = [1; 2];;

(* This function takes n elements from the tail *)
let rec take' n xs = xs |> List.rev |> take n |> List.rev;;

take' 3 [1;2;3;4;5] = [3; 4; 5];;

(* This function rotates n elements from the tail to the head *)
let rec rotate' n xs = xs |> List.rev |> rotate n |> List.rev;;

rotate' 2 [1; 2; 3; 4; 5] = [4; 5; 1; 2; 3];;
