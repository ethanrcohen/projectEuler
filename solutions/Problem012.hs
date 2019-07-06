import Data.List
triangleNum 1 = 1
triangleNum n = n + triangleNum (n-1) 

numDivisors n = 2 * length( 1 : filter ((== 0) . rem n) [2 .. truncate(sqrt(fromIntegral(n)))] )
 
main = print (find (\x ->  (numDivisors x) > 500)  (map triangleNum [1..]))
