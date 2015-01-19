module Problem021 where

insertAt, insertAt', insertAt'' :: a -> [a] -> Int -> [a]
insertAt e [] _ = [e]
insertAt e xs 1 = e : xs
insertAt e (x:xs) n = x : insertAt e xs (n - 1)

insertAt' e xs n = take (n - 1) xs ++ [e] ++ drop (n - 1) xs

insertAt'' e xs n = let (first,last) = splitAt (n - 1) xs
  in first ++ [e] ++ last
