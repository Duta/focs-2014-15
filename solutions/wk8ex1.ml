let rec check_exp' defs = function
  | Common.Val _ -> true
  | Common.Var x -> List.mem x defs
  | Common.Sum (e, e') 
  | Common.Prod (e, e') -> (check_exp' defs e) && (check_exp' defs e')
  | Common.Let (x, e, e') -> not (List.mem x defs) && (check_exp' defs e) && (check_exp' (x :: defs) e')
;;

let check_exp e = check_exp' [] e;;
