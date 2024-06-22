-- Find the sum of all the primes below two million.

-- Make a list of primes
ps = 2 : [i | i <- [3..], and [rem i p > 0 | p <- takeWhile ((<=i).(^2)) ps]]

main = print $ sum (takeWhile (<2000000) ps)
