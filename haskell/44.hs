pentagonal :: (Fractional a) => a -> a
pentagonal x = x*(3*x-1)/2

isPentagonalPair :: (Fractional a) => a -> a -> Bool
isPentagonalPair x y = 
