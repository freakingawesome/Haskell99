module Problem004 where

myLength :: [a] -> Int
myLength [] = 0
myLength [_] = 1
myLength (_:xs) = 1 + myLength xs

myLength' :: [a] -> Int
myLength' = foldr (\_ acc -> 1 + acc) 0

myLength'' :: [a] -> Int
myLength'' = foldl (\acc _ -> acc + 1) 0
