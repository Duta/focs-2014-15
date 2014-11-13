(* some lists we will use in examples *)
let l  = [0; 1; 2; 3; 4];;
let l' = [5; 6; 7; 8; 9];;

(* 1. calculate the sum of all elements of a list *)
let rec sum = ?

sum l = 10;;

(* 2. calculate the smallest element of a list *)
let rec minl = ?

minl l = 0;;

(* 3. 'zip' two lists of equal length into a list of pairs *)
let rec zip = ?

zip (l, l') = [(0, 5); (1, 6); (2, 7); (3, 8); (4, 9)];;

(* 4. 'unzip' a list of pairs into two lists *)
let rec unzip = ?

(l, l') |> zip |> unzip = (l, l');;

(* 5. 'flatten' a list of pairs into a single list *)
let rec flatten = ?

(l, l') |> zip |> flatten = [0; 5; 1; 6; 2; 7; 3; 8; 4; 9];;
