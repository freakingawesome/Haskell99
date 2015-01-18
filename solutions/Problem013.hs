module Problem013 where

import Data.List (group)
import Problem011 (ModifiedEncoding(..))

encodingDirect :: Eq a => [a] -> [ModifiedEncoding a]
encodingDirect xs = [ f x | x <- group xs ]
  where f [y] = Single y
        f ys@(y:_) = Multiple (length ys) y

encodingDirect' :: Eq a => [a] -> [ModifiedEncoding a]
encodingDirect' = foldr f []
  where
    f x [] = [Single x]
    f x list@(Single y:ys)
      | x == y = Multiple 2 y : ys
      | otherwise = Single x :list
    f x list@(Multiple n y:ys)
      | x == y = Multiple (n + 1) y : ys
      | otherwise = Single x :list
