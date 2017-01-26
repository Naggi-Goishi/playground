-- 1.1.1 Inductive Specification.

-- A natural number n is in S if and only if
-- 1. n = 0 , or
-- 2. n−3 ∈ S.

inS :: Int -> Bool
inS 0 = True -- rule one
inS n
  | (n - 3) >= 0 = inS (n - 3) -- rule two
  | otherwise = False
