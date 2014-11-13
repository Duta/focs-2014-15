(* some lists we will use in examples *)
let l  = [0; 1; 2; 3; 4];;
let l' = [5; 6; 7; 8; 9];;

(* 1. calculate the sum of all elements of a list *)
let rec sum = function 
  | [] -> ?
  | x :: xs -> ? + sum xs;;

sum l = 10;;

(* 2. calculate the smallest element of a list *)
let rec minl = function 
  | [] -> ?
  | [x] -> ?
  | x :: xs -> ?

minl l = 0;;

(* 3. 'zip' two lists of equal length into a list of pairs *)
let rec zip = function 
  | [], [] -> []
  | x :: xs, y :: ys -> ? :: (zip (xs, ys))
  | _, _ -> failwith "zip";;

zip (l, l') = [(0, 5); (1, 6); (2, 7); (3, 8); (4, 9)];;

(* 4. 'unzip' a list of pairs into two lists *)
let rec unzip = function 
  | [] -> [], []
  | (x, y) :: xys -> 
    let (xs, ys) = unzip xys in ?

(l, l') |> zip |> unzip = (l, l');;

(* 5. 'flatten' a list of pairs into a single list *)
let rec flatten = function 
  | [] -> []
  | (x, y) :: xys -> ?

(l, l') |> zip |> flatten = [0; 5; 1; 6; 2; 7; 3; 8; 4; 9];;