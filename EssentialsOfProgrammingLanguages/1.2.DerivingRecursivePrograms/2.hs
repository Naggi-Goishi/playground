-- 1.2.2 nth-element

nthElement :: [a] -> Int -> a
nthElement (x:_) 0 = x
nthElement (x:xs) n = nthElement xs (n-1)
