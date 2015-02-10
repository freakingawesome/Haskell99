module Problem037 where

import Problem036 (primeFactorsMult)

phi m = philist (primeFactorsMult m)

philist [] = 1
philist ((p,m):xs) = (p - 1) * p ^ (m - 1) * (philist xs)

phi' x = product [ (p - 1) * p ^ (m - 1) | (p,m) <- primeFactorsMult x ]
