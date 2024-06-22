{- What is the value of the first triangle number to have over five
   hundred divisors? (76576500)
-}

-- Triangular number generating function.
tn x = x * (x + 1) `div` 2

-- Factorisation algorithm.
factors x = [i | i <- [1..sqrt' x], x `mod` i == 0]

-- Return sqrt as an Int so range above works
sqrt' x = round . sqrt . fromIntegral $ x

totalFactors x
  | last (factors x) ^ 2 == x = l * 2 - 1
  | otherwise = l * 2
  where l = length (factors x)

f = [tn x | x <- [1..], totalFactors (tn x) > 500]

main = print f
