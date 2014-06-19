my_palindrome :: (Eq a) => [a] -> Bool
my_palindrome [] = True
my_palindrome [_] = True
my_palindrome xs = (head xs) == (last xs) && (my_palindrome $ init $ tail xs)

main::IO()
main = print $ my_palindrome [1,2,3,2,1]
