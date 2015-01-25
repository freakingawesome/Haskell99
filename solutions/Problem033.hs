module Problem033 where

coprime :: Integral a => a -> a -> Bool
coprime a b = 1 == gcd a b
