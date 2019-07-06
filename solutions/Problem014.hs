import Data.List
collatz :: Integer -> [Integer]
collatz 1 = 1:[]
collatz n = if n `rem` 2 == 0 then  n : collatz (n `div` 2) else n : collatz(3 * n + 1 )


main = print (fst ( last ( sortOn (length . snd)  [(a, collatz a) | a <- [1 .. 10^6]] )))
