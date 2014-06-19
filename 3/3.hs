element_at :: [a] -> Int -> a
element_at (x:_) 1 = x
element_at [] _ = error "Out of Bounds"
element_at (x:xs) n = element_at xs (n-1)

main::IO()
main = print $ element_at [1..40] 39
              
