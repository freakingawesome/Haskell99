module Problem003 where

elementAt :: [a] -> Int -> a
elementAt xs i = xs !! (i - 1)

elementAt' :: [a] -> Int -> a
elementAt' xs 1 = head xs
elementAt' (_:xs) i = elementAt' xs (i-1)

elementAt'' :: [a] -> Int -> a
elementAt'' xs i = last [ y | (n,y) <- zip [1..] xs, n <= i]
