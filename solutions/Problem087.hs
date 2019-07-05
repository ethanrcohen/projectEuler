import Problem007 (primes)
import Data.List

takePrimesPowerUnder limit pow = takeWhile (< limit) [n ^ pow | n <- primes]

takePrimesPowerUnder50m = takePrimesPowerUnder (50 * 10 ^ 6)
squares = takePrimesPowerUnder50m 2
cubes = takePrimesPowerUnder50m 3
fourths = takePrimesPowerUnder50m 4

removeDups :: (Ord a) => [a] -> [a]
removeDups x =  map head (group(sort(x)))

sumsUnder50m = removeDups ( filter (< 50 * 10 ^ 6) [a + b + c | a <- squares,
                                                                b <- takeWhile(< (50 * 10 ^ 6 - a)) cubes,
                                                                c <- takeWhile (< (50 * 10 ^ 6 - a -b)) fourths])

main = print(length sumsUnder50m)
