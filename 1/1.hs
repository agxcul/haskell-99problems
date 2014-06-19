takeList :: [a] -> a
takeList [x] = x
takeList (_:xs) = takeList xs

main::IO()
main = print $ takeList [1, 2, 3, 4, 5]
