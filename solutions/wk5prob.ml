open Common;;
open List;;

(* Unused. *)

let llama_move = function  
  | [R; O] -> [O; R]
  | [O; L] -> [L; O]
  | [R; L; O] -> [O; L; R]
  | [O; R; L] -> [L; R; O]
  | _ -> failwith "llama_move";;

let rec elim_consec = function 
  | [] -> []
  | [x] -> [x]
  | x :: x' :: xs -> 
  if x = x' then elim_consec (x' :: xs) 
  else x :: elim_consec (x' :: xs)
;;

let rec elim_dupls xs = xs |> sort compare |> elim_consec ;;

let combine xs ys = 
  elim_dupls (rev_append xs ys);;

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

let rec strip_ls = function 
  | O :: xs -> strip_ls xs
  | L :: xs -> strip_ls xs
  | xs -> xs
;;

let rec strip_rs = function 
  | O :: xs -> strip_rs xs
  | R :: xs -> strip_rs xs
  | xs -> xs
;;

let rec winning pos = pos |> strip_ls |> rev |> strip_rs = [];;

let rec has_path (src: llama list list) vstd = 
  match src with 
  | [] -> false
  | x :: xs -> 
    winning x ||
    let src' = expand x vstd in
    let src  = combine xs src' in 
    has_path src (x :: vstd) 
;;

let has_solution src = has_path [[O] @ src @ [O]] [];;