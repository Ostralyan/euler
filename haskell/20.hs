main = print $ sum . map (read . return) . show $ product [1..100]
