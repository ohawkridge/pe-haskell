-- Find the largest palindrome that's the product of two 3-digit numbers.

isPal x = (show x) == reverse (show x)

-- Find the palindromes is all possible combinations of i and j
-- within the lower (l) and upper (u) bounds given
times l u = [i * j | i <- [l..u], j <- [l..u], isPal(i * j)]

main = print $ maximum(times 100 999)
