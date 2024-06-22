-- Find the sum of the digits in the number 100!

-- with pattern matching
-- fac 1 = 1
-- fac n = n * fac (n - 1)

-- with product function
fac x = product [1..x]

-- sum up digits with pattern matching
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

sumDigs x = sum $ digs x
