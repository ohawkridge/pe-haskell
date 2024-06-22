{- Which starting number, under one million, produces the longest
   Collatz chain?    n → n/2 (n is even)    n → 3n + 1 (n is odd)
-}
import Data.Ord
import Data.List

ns = []

collatz 1 = ns
collatz n
  | mod n 2 == 0 = div n 2 : ns ++ collatz (div n 2)
  | otherwise    = n * 3 + 1 : ns ++ collatz (n * 3 + 1)

chains = [(x, length (collatz x)) | x <- [1000000,999999..2]]

main = print $ maximumBy (comparing snd) chains

-- 837 799
