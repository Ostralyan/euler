collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz x
  | odd x  = x : collatz (3*x + 1)
  | otherwise      = x : collatz (x `div` 2) 
