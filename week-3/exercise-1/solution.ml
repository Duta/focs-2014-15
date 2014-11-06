let min4 (a, b, c, d) = min (min a b) (min c d);;
let min8 (a, b, c, d, e, f, i, j) = min (min4 (a, b, c, d)) (min4 (e, f, i, j));;
