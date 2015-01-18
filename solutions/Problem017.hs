module Problem017 where

split :: [a] -> Int -> ([a],[a])
split [] _ = ([],[])
split xs 0 = ([],xs)
split xs@(x:xt) n = (x:first,last)
  where (first,last) = split xt (n-1)
