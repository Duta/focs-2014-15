let sort2 (a, b) =
  if a < b
  then (a, b)
  else (b, a);;
let merge ((a, b), (c, d)) =
  if a < c
  then (a, if b < c
           then (b, (c, d))
           else (c, sort2 (b, d)))
  else (c, if a < d
           then (a, sort2 (b, d))
           else (d, (a, b)));;
let fix (a, (b, (c, d))) = (a, b, c, d);;
let sort4 (a, b, c, d) = fix (merge ((sort2 (a, b)), (sort2 (c, d))));;
