factors :: (Integral a) => a -> [a]
factors n = [x | x <- [1,3..n], n `mod` x == 0]

prime :: (Integral a) => a -> Bool
prime x = if (length $ factors x) == 2 then True else False
