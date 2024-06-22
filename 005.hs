-- What is the smallest positive number that is evenly
-- divisible by all of the numbers from 1 to 20?

f x = if length [n | n <- [2..20], mod x n == 0] == 19
      then True
      else False

g = [n | n <- [10,20..1000000000], f n]  -- APPLY BRUTE FORCE!

-- Find prime factorisation of n.

main = print g
