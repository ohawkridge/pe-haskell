-- What is the 10 001st prime number?

-- rather then sieve, because we need a specific prime (the 10001st)
-- lets brute force it with trial division, perhaps with some tweaks

ps = 2 : [i | i <- [3..], and [rem i p > 0 | p <- takeWhile ((<=i).(^2)) ps]]


-- ps = 2 : [3..10]  -- WORKS
-- ps = 2 : [i | i <- [3,5..25], and [i `mod` j /= 0 | j <- 5]]

-- qs = 2 : [i | i <- [3,5..25], i `mod` 5 /= 0]


-- i mod i-1 down to i mod 3
-- try to map the mod function onto a list
-- takeWhile mod ? /=0 (as soon as mod ? == 0 we've found a factor,
-- therefore not prime, don't bother with rest of trial dividion)



main = print $ show (take 10001 ps)
