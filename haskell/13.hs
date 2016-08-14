main = do
        numbers <- readFile "13.txt"
        print $ sum $ map (read::String->Integer) (lines numbers)
