import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad (guard)

-- Find the sum of the proper divisors of n.
sumDivisors :: Int -> Int
sumDivisors n = sum $ [ x | x <- [1..n `div` 2], n `mod` x == 0 ]

-- https://github.com/joelgrus/project-euler-haskell/blob/master/euler.hs
abundants :: [Int]
abundants = filter isAbundant [1..]
  where isAbundant n = n < (sumDivisors n)
  
problem23 = sum notAbundantSums
  where
    abunds = takeWhile (< 28123) abundants
    abundSet = Set.fromList abunds
    notAbundantSums = filter nas [1..28123]
    nas n = null $ do
      i <- takeWhile (< n) abunds
      let j = n - i
      guard $ j `Set.member` abundSet

main = print problem23
