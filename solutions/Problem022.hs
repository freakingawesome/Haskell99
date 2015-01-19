module Problem022 where

range, range' :: Int -> Int -> [Int]
range b t = [b..t]

range' b t
  | b >= t = [t]
  | otherwise = b : range' (b+1) t
