my_compress :: Eq a => [a] -> [a]
my_compress [] = []
my_compress [x] = [x]
my_compress (x:xs)
    | x == head xs = my_compress $ ( [x] ++ tail xs)
    | otherwise = [x] ++ my_compress xs

main::IO()
main = print $ my_compress "aaaabccaadeeee"
