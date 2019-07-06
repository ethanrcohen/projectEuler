
factorial 1 = 1
factorial n = n * factorial(n -1)

n `choose` k 
    | k < 0 = 0
    | k > n = 0
    | otherwise = factorial n `div` (factorial k * factorial (n - k))

latticePaths x y =  (x + y) `choose` x 

main = print (latticePaths 20  20)
