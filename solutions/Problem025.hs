module Problem025 where

import Problem023 (rnd_select)

rnd_permu :: [a] -> IO ([a])
rnd_permu xs = rnd_select xs (length xs)

