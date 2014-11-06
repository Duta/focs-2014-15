let min4 (a, b, c, d)       = min (min a         b)         (min c d);;
let min5 (a, b, c, d, e)    = min (min (min a b) c)         (min c d);;
let min6 (a, b, c, d, e, f) = min (min (min a b) (min c d)) (min e f);;

let rm_min5 (a, b, c, d, e) =
       if a <= min4 (b, c, d, e)
  then              (b, c, d, e)
  else if b <= min4 (a, c, d, e)
  then              (a, c, d, e)
  else if c <= min4 (a, b, d, e)
  then              (a, b, d, e)
  else if d <= min4 (a, b, c, e)
  then              (a, b, c, e)
  else              (a, b, c, d);;

let rm_min6 (a, b, c, d, e, f) =
       if a <= min5 (b, c, d, e, f)
  then              (b, c, d, e, f)
  else if b <= min5 (a, c, d, e, f)
  then              (a, c, d, e, f)
  else if c <= min5 (a, b, d, e, f)
  then              (a, b, d, e, f)
  else if d <= min5 (a, b, c, e, f)
  then              (a, b, c, e, f)
  else if e <= min5 (a, b, c, d, f)
  then              (a, b, c, d, f)
  else              (a, b, c, d, e);;

let rm_min7 (a, b, c, d, e, f, g) =
       if a <= min6 (b, c, d, e, f, g)
  then              (b, c, d, e, f, g)
  else if b <= min6 (a, c, d, e, f, g)
  then              (a, c, d, e, f, g)
  else if c <= min6 (a, b, d, e, f, g)
  then              (a, b, d, e, f, g)
  else if d <= min6 (a, b, c, e, f, g)
  then              (a, b, c, e, f, g)
  else if e <= min6 (a, b, c, d, f, g)
  then              (a, b, c, d, f, g)
  else if f <= min6 (a, b, c, d, e, g)
  then              (a, b, c, d, e, g)
  else              (a, b, c, d, e, f);;

let med7 a b c d e f g = min4 (rm_min5 (rm_min6 (rm_min7 (a, b, c, d, e, f, g))));;
