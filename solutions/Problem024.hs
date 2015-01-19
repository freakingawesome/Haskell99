module Problem024 where

import System.Random

-- TODO: oops, the problem called for distinct random numbers
diff_select :: Int -> Int -> IO ([Int])
diff_select 0 h = return []
diff_select n h = do r <- randomRIO (1,h)
                     selected <- diff_select (n-1) h
                     return (r : selected)
