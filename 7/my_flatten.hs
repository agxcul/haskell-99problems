data NestedList a = Elem a | List [NestedList a]

my_flatten :: NestedList a -> [a]
my_flatten (Elem x) = [x]
my_flatten (List (x:xs)) = my_flatten x ++ my_flatten (List xs)
my_flatten (List []) = []

main::IO()
main = print $ my_flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
