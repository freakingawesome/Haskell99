module Problem010 where

import Problem009

encode :: Eq a => [a] -> [(Int,a)]
encode list = map f (pack list)
  where f x = (length x, head x)
