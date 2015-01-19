module Problem023 where

import System.Random (randomRIO)
import Problem020 (removeAt)

rnd_select :: [a] -> Int -> IO ([a])
rnd_select _ 0 = return []
rnd_select [] _ = return []
rnd_select xs n = do r <- randomRIO (1,length xs)
                     let (Just e,rem) = removeAt xs r
                     selected <- rnd_select rem (n-1)
                     return (e : selected)
