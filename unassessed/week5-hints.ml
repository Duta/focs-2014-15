(* This function takes the first n elements of a list *)

let rec take n xs = match n, xs with 
  | 0, _ -> ?
  | n, x :: xs -> ?
  | _, _ -> failwith "take"
;;

take 2 [1;2;3;4;5] = [1; 2];;


(* This function removes the first n elements of a list *)

let rec drop n xs = match n, xs with 
  | 0, xs -> ?
  | n, x :: xs -> ?
  | _, _ -> failwith "drop"
;;

drop 3 [1;2;3;4;5] = [4; 5];;

(* This function 'rotates' the first n elements from the head to the tail *)

let rec rotate n xs = ... use take and drop from above ...
;;

rotate 3 [1;2;3;4;5] = [4; 5; 1; 2; 3];;

(* This function drops n elements from the tail *)
let rec drop' n xs = ... use drop from above ...

drop' 3 [1;2;3;4;5] = [1; 2];;

(* This function takes n elements from the tail *)
let rec take' n xs = ... use take from above ...

take' 3 [1;2;3;4;5] = [3; 4; 5];;

(* This function rotates n elements from the tail to the head *)
let rec rotate' n xs = ... work on the reverted list ... 

rotate' 2 [1; 2; 3; 4; 5] = [4; 5; 1; 2; 3];;
