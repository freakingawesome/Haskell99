module Problem011 where

import Problem010

data ModifiedEncoding a = Single a | Multiple Int a deriving (Show,Eq)

encodeModified :: Eq a => [a] -> [ModifiedEncoding a]
-- encodeModified list = map f (encode list)
encodeModified = map f . encode
  where
    f (1,a) = Single a
    f (n,a) = Multiple n a
