-- Find the sum of the even numbers in the Fibonacci sequence up to 4M

f 0 = 0  -- edge conditions
f 1 = 1  -- so recursive function will terminate
f n = f (n - 1) + f (n - 2)

main =
  print (sum [f n | n <- [2..34], f n `mod` 2 == 0, f n <= 4000000])
