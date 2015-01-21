module Problem027 where

import Data.List (tails)

group :: [Int] -> [a] -> [[a]]
group ns xs = undefined

combinations' :: Int -> [a] -> [a] -> [([a],[a])]
combinations' 0 xs unused = [([],unused++xs)]
combinations' _ [] _ = []
combinations' n (x:xs) unused =
  [ (x : ys,rest) | (ys,rest) <- combinations' (n-1) xs (unused) ] ++ combinations' n xs (unused++[x])
