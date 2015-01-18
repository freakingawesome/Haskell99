module Problem006 where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome list = left == right
  where
    num = div (length list) 2
    left = take num list
    right = (take num . reverse) list

