import Data.Char
factorial 1 = 1 
factorial n = n * factorial(n-1)

main = print ((sum . map digitToInt . show) (factorial(100)))
