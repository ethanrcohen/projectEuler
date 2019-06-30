import Data.Char
import Data.List

main = do 
    file <- readFile("input8.txt")
    let input = concat(lines(file))
    let digits = take 13 (tails( map (fromIntegral . digitToInt) (input )))
    let digitsList = foldr (zipWith (:)) (repeat [])
    print(maximum (map (product) (digitsList (digits ))))
