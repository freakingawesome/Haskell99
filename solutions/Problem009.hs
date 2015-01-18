module Problem009 where

pack :: Eq a => [a] -> [[a]]
pack = foldr f []
  where
    f x [] = [[x]]
    f x list@((a:as):ys)
      | x == a = (x:a:as) : (ys)
      | otherwise = [x] : list

pack' :: Eq a => [a] -> [[a]]
pack' [] = []
pack' (x:xs) = let (first,last) = span (==x) xs
  in (x:first) : (pack' last)
