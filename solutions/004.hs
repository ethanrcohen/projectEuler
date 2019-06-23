isPalindrome :: String -> Bool
isPalindrome digits  = case digits of 
    [] ->  True
    [x] ->  True
    xs ->  if (head(digits) /= last(digits)) then False else isPalindrome(tail(init digits))

main = print (maximum [x * y | x <- [100.. 999], y <- [100.. 999], isPalindrome(show(x*y))])
