my_reverse :: [a] -> [a]
my_reverse [] = []
my_reverse [x] =  [x]
my_reverse (x:xs) = my_reverse xs ++ [x]

main::IO()
main = print $ my_reverse [1..100]
