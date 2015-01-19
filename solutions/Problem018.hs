module Problem018 where

slice, slice' :: Eq a => [a] -> Int -> Int -> [a]
slice xs from to = (take (1 + to - from) . drop (from - 1)) xs

slice' [] _ _ = []
slice' _ _ 1 = []
slice' (x:xs) 1 to = x : slice' xs 1 (to - 1)
slice' (x:xs) from to = slice' xs (from - 1) (to - 1)

