module Problem005 where

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]


myReverse' :: [a] -> [a]
myReverse' list = innerRev list []
  where
    innerRev [] ys = ys
    innerRev (x:xs) ys = innerRev xs (x : ys)
