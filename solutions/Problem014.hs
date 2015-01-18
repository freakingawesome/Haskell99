module Problem014 where

dupli :: Eq a => [a] -> [a]
dupli = foldr f []
  where f x acc = x : x : acc
