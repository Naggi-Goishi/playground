-- Simple arithmetic 
2 + 15
-- 17
49 * 100
-- 4900
1897 - 1472
-- 425
5 / 2
-- 2.5
(50 * 100) - 4999
-- 1
50 * 100 - 4999
-- 1
50 * (100 - 4999)
--- 244950

-- Boolean algebra
True && False
-- False
True && True
-- True
False || True
-- True
not False
-- True
not (True && True)
-- False
5 == 5
-- True
1 == 0
-- False
5 /= 5
-- False
5 /= 4
-- True
"hello" == "hello"
-- True

5 + "llama" 
-- No instance for (Num [Char])  
-- arising from a use of `+' at <interactive>:1:0-9  
-- Possible fix: add an instance declaration for (Num [Char])  
-- In the expression: 5 + "llama"  
-- In the definition of `it': it = 5 + "llama"   

-- Functions
succ 8
-- 9
min 8 9
-- 8
min 3.4 4.2
-- 3.4
max 100 101
-- 101
succ 9 + max 5 4 + 1
-- 16
(succ 9) + (max 5 4) + 1
-- 16
succ 9 * 10
-- 100
succ (9 * 10)
-- 91