(*

    Common definitions for week n.

    Students should not change this file.

*)

type exp =
  | Val of int
  | Var of string
  | Sum of exp * exp
  | Prod of exp * exp
  | Let of string * exp * exp ;;

let rec string_of_exp = function 
  | Val x -> string_of_int x
  | Var x -> x
  | Sum (e, e') -> "(" ^ (string_of_exp e) ^ "+" ^ (string_of_exp e') ^ ")"
  | Prod (e, e') -> "(" ^ (string_of_exp e) ^ "*" ^ (string_of_exp e') ^ ")"
  | Let (x, e, e') -> "(let " ^ x ^ "=" ^ (string_of_exp e) ^ " in " ^ (string_of_exp e') ^ ")"
;;

