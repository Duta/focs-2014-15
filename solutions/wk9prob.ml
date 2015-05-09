open List

let most_freq xs = 
  let xs = sort compare xs in 
  let histo = fold_right 
    (fun x a -> match a with 
      | [] -> [(x, 1)]
      | (x', n') :: xns when x = x' -> (x', n' + 1) :: xns
      | (x', n') :: xns -> (x, 1) :: (x', n') :: xns
    ) xs [] in 
  let histo = sort (fun (_, m) (_, n) -> compare n m) histo in 
  histo |> hd |> fst;;

