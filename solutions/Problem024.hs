module Problem024 where

import System.Random
import Problem023 (rnd_select)

diff_select :: Int -> Int -> IO ([Int])
diff_select n h = rnd_select [1..h] n
