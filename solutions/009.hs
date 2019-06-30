isSquare x =  x == head (dropWhile (<x) squares)
    where squares = scanl1 (+) [1, 3..]
triples :: [(Int, Int, Int)]
triples = [(a , b , c  ) | a  <- [1..500] , b <- [1..a] ,  c <- [ truncate(sqrt (fromIntegral(a^2 + b^2))) ], a + b + c == 1000, isSquare(a^2+b^2)]
main = print ( (\(a, b, c) -> a*b*c) (head triples))
