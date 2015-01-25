module Problem031 where

isPrime, isPrime' :: Integral a => a -> Bool
isPrime n
  | n <= 0 = error "Must be greater than zero"
  | n == 1 = True
  | otherwise = isPrime' (n-1)
      where isPrime' m
              | m == 1 = True
              | n `mod` m == 0 = False
              | otherwise = isPrime' (m-1)

isPrime' n = null [ m | m <- [2..(n-1)], n `mod` m == 0 ]
