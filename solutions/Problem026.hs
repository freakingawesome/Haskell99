module Problem026 where

combinations, combinations' :: Int -> [a] -> [[a]]

combinations 0 _ = []
combinations _ [] = []
combinations 1 xs = [ [x] | x <- xs ]
combinations n (x:xs) = [ x : ys | ys <- combinations (n-1) xs ] ++ combinations n xs

combinations' 0 _ = [[]]
combinations' _ [] = []
combinations' n (x:xs) = [ x : ys | ys <- combinations' (n-1) xs ] ++ combinations' n xs

