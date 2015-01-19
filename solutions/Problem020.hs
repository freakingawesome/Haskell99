module Problem020 where

removeAt :: [a] -> Int -> (Maybe a,[a])
removeAt xs n = foldr f (Nothing,[]) (zip [1..] xs)
  where
    f (i,x) (lone,acc)
      | i == n = (Just x,acc)
      | otherwise = (lone,x:acc)
