module Problem035 where

import Problem031 (isPrime)

primeFactors :: Int -> [Int]
primeFactors n
  | isPrime n = [n]
  | otherwise = p : primeFactors (div n p)
      where p = head [ x | x <- [2..(div n 2)], isPrime x, mod n x == 0 ]
