memoized_fib :: Int -> Integer
memoized_fib = (map fib [0 ..] !!)
   where fib 0 = 0
         fib 1 = 1
         fib n = memoized_fib (n-2) + memoized_fib (n-1)

digits :: (Show a) => a -> Int
digits x = length $ show x

main = [x | x <- [1..5000], (digits $ memoized_fib x) == 1000]
