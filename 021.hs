-- Evaluate the sum of all the amicable numbers under 10000. 
import Data.Time

d n = sum $ [x | x <- [1..(n - 1)], n `mod` x == 0]

-- list amicable numbers to n
ami n = [x | x <- [1..n], d (d x) == x, (d x) /= x]

-- actually sum them up
ami' n = sum $ [x | x <- [1..n], d (d x) == x, (d x) /= x]

main = print $ ami' 999

-- 31626
