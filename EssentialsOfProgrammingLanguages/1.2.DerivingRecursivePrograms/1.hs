-- 1.2.1 list length

listLength :: [a] -> Int
listLength [] = 0
listLength (_:xs) = 1 + listLength xs