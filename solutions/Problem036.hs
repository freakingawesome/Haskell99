module Problem036 where

import Problem035 (primeFactors)
import Data.List (group)

primeFactorsMult :: Int -> [(Int,Int)]
primeFactorsMult n = [ (head x, length x) | x <- group $ primeFactors n ]
