quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort [y | y <- xs, y <= x] ++ [x] ++ quicksort [y | y <- xs, y > x]

removeIguais :: [Int] -> [Int]
removeIguais [] = []
removeIguais (x:xs) = x: (removeIguais (remove x xs))
	where
		remove :: Int -> [Int] -> [Int]
		remove x [] = []
		remove x (y:ys)
			| x==y = remove x ys
			| otherwise = y:(remove x ys)


mesmosElementos :: [Int] -> [Int] -> Bool
mesmosElementos [] [] = True
mesmosElementos [] _ = False
mesmosElementos _ [] = False
mesmosElementos (a:b) (c:d) | (a == c) = mesmosElementos b d
							| otherwise = False

main = do 
	let x = [1,2,3,3]
	let y = [3,3,1,4]
	quicksort x
	quicksort y
	removeIguais x 
	removeIguais y
	print(mesmosElementos x y)



