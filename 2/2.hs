myButLast :: [a] -> a
myButLast [a, _] = a
myButLast (_:xs) = myButLast xs

main::IO()
main = print $ myButLast [1,2,3,4,5]
