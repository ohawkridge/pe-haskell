{- What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9? -}
import Data.List

-- 3,628,800 possible permutations choosing all the set each time.

main = print $ (sort $ permutations "0123456789") !! 999999
