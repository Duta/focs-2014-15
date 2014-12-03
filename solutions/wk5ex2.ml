open Common;;
open List;;


let llama_move = function  
  | [R; O] -> [O; R]
  | [O; L] -> [L; O]
  | [R; L; O] -> [O; L; R]
  | [O; R; L] -> [L; R; O]
  | _ -> failwith "llama_move";;

let rec add_pref x = map (fun xs -> x :: xs);;

let rec get_next = function 
  | R :: O :: xs -> (O :: R :: xs) :: (add_pref R (get_next (O :: xs)))
  | O :: L :: xs -> (L :: O :: xs) :: (add_pref O (get_next (L :: xs)))
  | R :: L :: O :: xs -> (O :: L :: R :: xs) :: (add_pref R (get_next (L :: O :: xs)))
  | O :: R :: L :: xs -> (L :: R :: O :: xs) :: (add_pref O (get_next (R :: L :: xs)))
  | x :: xs -> add_pref x (get_next xs)
  | [] -> []
;;

let rec expand pos vstd =
  let pos_list = get_next pos in 
  filter (fun pos -> not (mem pos vstd)) pos_list
;;

let rec strip_los = function 
  | O :: xs -> strip_los xs
  | xs -> xs
;;

let strip_os xs = xs |> strip_los |> rev |> strip_los |> rev;;

let is_move xs ys = 
  let xss = expand ([O] @ xs @ [O])  [] |> map strip_os in 
  mem (strip_os ys) xss
;;