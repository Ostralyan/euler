import Data.Char
import Data.List
import Data.List.Split

alphabeticalValue :: String -> Int
alphabeticalValue [] = 0
alphabeticalValue (x:xs) = (ord $ toLower x) - (ord 'a') + 1 + alphabeticalValue xs

multiplyTuple :: (Integral a) => (a, a) -> a
multiplyTuple (x, y) = x*y

main = do
        text <- readFile "22.txt"
        print $ sum $ map multiplyTuple $ zip [1..] $  map alphabeticalValue $ sort $ splitOn "," $ filter (\x -> x /= '\"' && x /= '\n') text
