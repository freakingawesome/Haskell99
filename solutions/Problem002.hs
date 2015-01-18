module Problem002 where

myButLast :: [a] -> a
myButLast xs = xs !! ((length xs) - 2)

myButLast' :: [a] -> a
myButLast' [] = error "empty list"
myButLast' [x] = error "list too short"
myButLast' (x:_:[]) = x
myButLast' (_:xs) = myButLast xs
