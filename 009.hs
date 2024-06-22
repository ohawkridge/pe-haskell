{- Find the Pythagorean triplet for which a + b + c = 1000. A
   Pythagorean triplet is a set of three natural numbers, a < b < c,
   for which, a^2 + b^2 = c^2.
-}

main = print [(a, b, c) | a <- [0..500], b <- [0..500], c <- [0..500], a^2 + b^2 == c^2, a < b && b < c, a + b + c == 1000]
