factors :: (Integral a) => a -> [a]
factors x = [n | n <- [1..(x `div` 2)], x `mod` n == 0]

d :: (Integral a) => a -> a
d xs = sum $ factors xs

amicable :: (Integral a) => a -> Bool
amicable x
  | x == (d x)     = False
  | x == (d (d x)) = True
  | otherwise      = False 

main = print $ sum [x | x <- [1..9999], amicable x]
