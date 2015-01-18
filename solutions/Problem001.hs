myLast :: [a] -> a
myLast = head . reverse

myLast' :: [a] -> a
myLast' [] = error "empty list"
myLast' [a] = a
myLast' (_:xs) = myLast xs
