let rec subst n x = function 
  | Common.Val n -> Common.Val n
  | Common.Var x' -> if x = x' then Common.Val n else Common.Var x'
  | Common.Sum (e, e') -> Common.Sum ((subst n x e), (subst n x e'))
  | Common.Prod (e, e') -> Common.Prod (subst n x e, subst n x e')
  | Common.Let (x', e, e') -> Common.Let (x', subst n x e, subst n x e')
;;
