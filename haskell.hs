myLast :: [a] -> a
myLast [] = error "No end for empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs

myButLast :: [a] -> a
myButLast [] = error "No end for empty lists!"
myButLast [x, y] = x
myButLast (_:xs) = myButLast xs

myButLast' :: [a] -> a
myButLast' = last.init

elementAt :: [a] -> Int -> a

elementAt _ 0 = error "index should not be zero"
elementAt [] _ = error "index out of bounds"
elementAt (x:_) 1 = x 
elementAt (_:xs) n = elementAt xs (n-1)

myLength :: [x] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs
