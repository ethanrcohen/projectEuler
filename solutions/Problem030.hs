import Data.Char
isSumOfFifthPowers :: Int -> Bool
isSumOfFifthPowers x = x == ( sum ( map ((^5) . digitToInt)  (show(x))))
main = print (sum(filter (isSumOfFifthPowers) [2 .. 10^6]))
