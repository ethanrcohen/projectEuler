import Data.List
import Problem009 (isSquare)
rightTrianglesPerim sizeLim = filter (< sizeLim) [a +  b +  c | a <- [1 .. sizeLim], b <- [1 .. a], c <- [truncate(sqrt (fromIntegral (a^2 + b^2))) ], isSquare(a^2 + b^2) ]
mostCommon :: (Ord a) => [a] -> a
mostCommon = snd . maximum . map (\xs -> (length xs, head xs)) . group . sort
main = print ((mostCommon . rightTrianglesPerim) 1000)
