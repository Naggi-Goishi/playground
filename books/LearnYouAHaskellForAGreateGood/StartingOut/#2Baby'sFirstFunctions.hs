-- doubleMe 10
-- 20
doubleMe x = x + x

-- doubleUs 20 19
-- 78
-- doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y

--  else part is mandatory in Haskell
doubleSmallNumber x = if x > 100
                        then x
                        else doubleMe x
doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

conanO'Brien = "It's a-me, Conan O'Brien!"
