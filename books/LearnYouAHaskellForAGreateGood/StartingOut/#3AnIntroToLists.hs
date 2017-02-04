lostNumbers = [4, 8, 15, 16, 23, 42]

-- [1,2,'a',3,'b','c',4]
-- error

list = [1, 2, 3, 4, 5] ++ [9, 10, 11, 12, 13]
-- [1,2,3,4,5,9,10,11,12,13]

helloworld = "hello" ++ " " ++ "world"
woot = ['w', 'o'] ++ ['o', 't']
aSmallCat = 'A':" smallcat"

getIndex6OfSteveBuscemi = "Steve Buscemi" !! 6 
getIndex1OfNumbers =  [9.4,33.2,96.2,11.2,23.25] !! 1 

-- [3, 2, 1] > [2, 1, 0]
---- True
-- [3, 2, 1] > [2, 10, 100]
---- True
-- [3, 4, 5] > [3, 4]
---- True
-- [3, 4, 2] > [2, 4]
---- True
-- [3, 4, 2] == [3, 4, 2]
--- True

-- |head| takes a list and returns its head. The head of a list is basically its first element.
-- head [4, 5, 6, 7]
---- 4
-- head []
---- *** Exception: Prelude.head: empty list
-- |tail| takes a list and returns its tail. In other words, it chops off a list's head.
-- tail [4, 5, 6, 7]
---- [5, 6, 7]
-- |last| takes a list and returns its last element.
-- last [3, 4, 5]
---- 5
-- |init| takes a list and returns everything except its last element.
-- init [5, 4, 3, 2, 1]
---- [5, 4, 3, 2]
