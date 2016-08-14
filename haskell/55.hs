flipInt :: Integer -> Integer
flipInt = read . reverse . show

isPalindrome :: Integer -> Bool
isPalindrome x = x == flipInt x

flipSum :: Integer -> Integer
flipSum x = x + flipInt x

isLychrel :: Integer -> Bool
isLychrel x = lychrel (flipSum x) 1
    where lychrel _ 50 = True
          lychrel n i | isPalindrome n = False
                      | otherwise      = lychrel (flipSum n) (succ i)

