my_pack :: Eq a => [a] -> [[a]]
my_pack (x:xs) = let (first, rest) = span( == x) xs
        in (x:first) : my_pack rest
my_pack [] = []

-- Solution 2 --
my_pack2 :: Eq a => [a] -> [[a]]
my_pack2 [] = []
my_pack2 (x:xs) = (x:first) : my_pack2 rest
    where
      get_reps [] = ([], [])
      get_reps (y:ys)
               | y == x = let (f,r) = get_reps ys in (y:f, r)
               | otherwise = ([], (y:ys))
      (first, rest) = get_reps xs
             
main::IO()
main = print $ my_pack2 ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
