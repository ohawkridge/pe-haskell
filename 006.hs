{- Find the difference between the sum of the squares of the first
   one hundred natural numbers and the square of the sum.
-}

x = (sum [1..100])^2 - sum [x^2 | x <- [1..100]]

-- main = print [x^2 | x <- [1..10]]  -- WORKS
-- main = print $ sum [1..10]  -- WORKS

main = print x
