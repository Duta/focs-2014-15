let rec check_exp' defs = function
  | Common.Val _ -> true
  | Common.Var x -> List.mem x defs
  | Common.Sum (e, e') 
  | Common.Prod (e, e') -> (check_exp' defs e) && (check_exp' defs e')
  | Common.Let (x, e, e') -> not (List.mem x defs) && (check_exp' defs e) && (check_exp' (x :: defs) e')
;;

let check_exp e = check_exp' [] e;;

let rec subst n x = function 
  | Common.Val n -> Common.Val n
  | Common.Var x' -> if x = x' then Common.Val n else Common.Var x'
  | Common.Sum (e, e') -> Common.Sum ((subst n x e), (subst n x e'))
  | Common.Prod (e, e') -> Common.Prod (subst n x e, subst n x e')
  | Common.Let (x', e, e') -> Common.Let (x', subst n x e, subst n x e')
;;

let rec eval' = function 
  | Common.Val n -> n
  | Common.Var x -> failwith "n"
  | Common.Sum (e, e') -> (eval' e) + (eval' e')
  | Common.Prod (e, e') -> (eval' e) * (eval' e')
  | Common.Let (x', e, e') -> 
  let n = eval' e in 
  eval' (subst n x' e')
;;

let eval e = if check_exp e then eval' e else 0;;
