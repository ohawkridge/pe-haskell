-- What is the largest prime factor (LPF) of the number 600851475143?

f n = reverse [x | x <- [1,3..775146], mod n x == 0]

main = print $ f 600851475143
