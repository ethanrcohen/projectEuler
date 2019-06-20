solution = sum [x | x <- takeWhile (<= 4000000) fibonacci, even x] where fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

main = print solution
