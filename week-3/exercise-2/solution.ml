let sort2 (a, b) = if a < b then (a, b) else (b, a);;
let sort3 (a, b, c) =
  let (a' , b'  ) = sort2 (a , b  ) in
  let (b'', c'  ) = sort2 (b', c  ) in
  let (a'', b''') = sort2 (a', b'') in
  (a'', b''', c');;
let sort4 (a, b, c, d) = 
  let (a', b', c') = sort3 (a, b, c) in
  let (c'', d'  )  = sort2 (c', d  ) in
  let (b'', c''')  = sort2 (b', c'') in
  let (a'', b''')  = sort2 (a', b'') in
  (a'', b''', c''', d');;
