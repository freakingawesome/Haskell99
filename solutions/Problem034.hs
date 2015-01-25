module Problem034 where

import Problem033 (coprime)

totient, totient'' :: Integral a => a -> Int
totient n = totient' (n-1)
  where
    totient' 1 = 1
    totient' m = (if coprime n m then 1 else 0) + totient' (m-1)

totient'' n = length [ m | m <- [1..(n-1)], coprime n m ]
