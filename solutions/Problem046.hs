module Problem046 where

and', or', nand', nor', xor', impl', eq' :: Bool -> Bool -> Bool

infix 4 `or'`
infix 6 `and'`

table :: (Bool -> Bool -> Bool) -> IO ()

and' True b = b
and' False _ = False

or' False b = b
or' True _ = True

nand' True True = False
nand' _ _ = True

nor' False False = True
nor' _ _ = False

xor' a b = not' $ eq' a b

impl' a b = or' (not' a) b

eq' True True = True
eq' False False = True
eq' _ _ = False

not' :: Bool -> Bool
not' True = False
not' False = True

table f = do
  let p a b = print (show a ++ " " ++ show b ++ " " ++ show (f a b))
  p True True
  p True False
  p False True
  p False False
  return ()
