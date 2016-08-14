pentagonal :: (Integral a) => a -> a
pentagonal x = x*(3*x-1) `div` 2

isPentagonalPair :: (Integral a) => a -> a -> Bool
isPentagonalPair x y
  | (pentagonal x + (pentagonal y)) == abs (pentagonal x - (pentagonal y)) = True
    | otherwise = False
