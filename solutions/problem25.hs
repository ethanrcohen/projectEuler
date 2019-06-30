import Data.List
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)
main = print (findIndex (>= 10^999) fibonacci)
