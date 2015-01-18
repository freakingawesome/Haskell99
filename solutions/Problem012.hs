module Problem012 where

import Problem011

decodeModified :: Eq a => [ModifiedEncoding a] -> [a]
decodeModified = foldr f []
  where
    f (Single x) acc = x : acc
    f (Multiple n x) acc = replicate n x ++ acc
