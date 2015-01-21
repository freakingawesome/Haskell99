module Problem027 where

group :: [Int] -> [a] -> [[[a]]]
group [] _ = [[]]
group _ [] = []
group (n:ns) xs = [ comb : rest | (comb,rem) <- combinations'' n xs [],
                                  rest <- group ns rem ]

combinations'' :: Int -> [a] -> [a] -> [([a],[a])]
combinations'' 0 xs unused = [([],unused++xs)]
combinations'' _ [] _ = []
combinations'' n (x:xs) unused =
  [ (x : ys,rest) | (ys,rest) <- combinations'' (n-1) xs (unused) ] ++ combinations'' n xs (unused++[x])
