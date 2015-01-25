module Problem032 where

myGCD :: Integral a => a -> a -> a
myGCD a b
  | a < b = myGCD a (b-a)
  | a > b = myGCD (a-b) b
  | otherwise = a
