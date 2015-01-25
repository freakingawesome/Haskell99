module Problem028 where

import GHC.Exts (sortWith, groupWith)

import Data.List (sortBy)

lsort :: [[a]] -> [[a]]
lsort = sortWith length

lsort' :: [[a]] -> [[a]]
lsort' = sortBy (\a b -> compare (length a) (length b))

lfsort :: [[a]] -> [[a]]
lfsort = concat . lsort . groupWith length . lsort
