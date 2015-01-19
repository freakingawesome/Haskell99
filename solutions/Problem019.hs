module Problem019 where

rotate :: [a] -> Int -> [a]
rotate xs 0 = xs
rotate [] _ = []
rotate xs n
  | n < 0 = rotate (last xs : init xs) (n + 1)
  | n > 0 = rotate (tail xs ++ [head xs]) (n - 1)
