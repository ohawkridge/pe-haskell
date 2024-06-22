{- If the numbers 1 to 5 are written out in words: one, two, three,
   four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in
   total. If all the numbers from 1 to 1000 (one thousand) inclusive
   were written out in words, how many letters would be used?
-}

one = ["one", "two", "three", "four", "five", "six", "seven", "eight",
        "nine", "ten", "eleven", "twelve", "thirteen", "fourteen",
        "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

tys = ["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

-- Split an integer into a list of its digits.
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

f x
  | x == 0              = []
  | x < 20              = one !! (x - 1)
  | x >= 20 && x < 100  = tys !! ((fd x) - 2) ++ f (last (digs x))
  | x >=100 && x < 1000 = one !! ((fd x) - 1) ++ "hundredand" ++ f (mod x 100)
  | x == 1000           = "onethousand"          
  where fd x = head (digs x)

-- main = print (concatMap f $ [1..301]) -- print in words
-- if even hundred don't add 'and' (need to - (9 * 3))
main = print (length . concatMap f $ [1..1000])
