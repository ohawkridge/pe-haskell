{- By starting at the top of the triangle below and moving to adjacent
   numbers on the row below, find the maximum total from top to bottom of the
   triangle below.
-}

-- import Data.List

triangle = [[3, 4, 6, 3],
            [7, 4, 9],
            [2, 5],
            [8]]

-- can we print all possible routes? (8)
routes = [x, y | x <- [0..3], y <- [3,2..0]]

main = print $ triangle !! 1 !! 2

-- data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show)

-- smallTree :: Tree Int
-- smallTree =
--   Node 3
--       (Node 7
--            (Node 2
--                 (Node 8 Empty Empty)
--                 (Node 5 Empty Empty)
--            )
--            (Node 4
--                 (Node 5 Empty Empty)
--                 (Node 9 Empty Empty)
--            )
--       )
--       (Node 4
--            (Node 6
--                 (Node 9 Empty Empty)
--                 (Node 3 Empty Empty)
--            ) Empty
--       )     
  
-- summarize :: Tree a -> [[a]]
-- summarize Empty = [[]]
-- summarize (Node a t1 t2) = do
--     t       <- [t1, t2]
--     summary <- summarize t
--     return (a:summary)

-- main = print (maximum (map sum (nub (summarize smallTree))))
-- main = print (summarize smallTree)
