import Data.List

my_encode :: Eq a => [a] -> [(Int, a)]
my_encode [] = []
my_encode xs =
    let res = (group xs)
            in map (\x -> (length x, head x)) res

main::IO()
main = print $ my_encode ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']

