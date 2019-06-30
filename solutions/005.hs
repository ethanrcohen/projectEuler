module Main where
import Data.List
divisibleByAllTo :: Int -> Int -> Bool
divisibleByAllTo 1 y = True
divisibleByAllTo x y = (y `mod` x == 0) && (divisibleByAllTo(x-1) y)
main = print (find (divisibleByAllTo(20)) [1..])
