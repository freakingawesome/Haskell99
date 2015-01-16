compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:y:xs)
  | x == y = compress $ x : xs
  | otherwise = x : (compress (y : xs))

compress' :: Eq a => [a] -> [a]
compress' = foldr cmp []
  where cmp x ys
          | null ys = [x]
          | x == head ys = compress $ x : (tail ys)
          | otherwise = x : (compress ys)

compress'' :: Eq a => [a] -> [a]
compress'' = foldr cmp []
  where cmp x xs = x : (dropWhile (\z -> z == x) xs)
