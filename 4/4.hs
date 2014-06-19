my_length :: [a] -> Int
my_length [] = 0
my_length (_:xs) = 1 + my_length xs

main::IO()
main = print $ my_length [1..100]
