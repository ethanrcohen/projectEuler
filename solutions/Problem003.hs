primeFactors :: Integer -> [Integer]

primeFactors 1 = []


primeFactors n = 
    case facs  of 
        [] -> [n]
        _ -> facs ++ primeFactors (n `div` head(facs))
    where facs = take 1 $ filter (\x -> (n `mod` x) == 0) [2.. round(sqrt(fromIntegral(n)))]

main = print (maximum(primeFactors 600851475143))
