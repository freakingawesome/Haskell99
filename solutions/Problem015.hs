module Problem015 where

repli :: Eq a => [a] -> Int -> [a]
repli xs n = foldr f [] xs
  where f x acc = replicate n x ++ acc

repli' :: Eq a => [a] -> Int -> [a]
repli' [] _ = []
repli' (x:xs) n = f x n ++ repli' xs n
  where f y 1 = [y]
        f y n' = y : f y (n' - 1)

repli'' :: Eq a => [a] -> Int -> [a]
repli'' = flip $ concatMap . replicate
