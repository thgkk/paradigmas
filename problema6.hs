podeConstruir :: Int -> Int -> Int -> Bool
podeConstruir a b c = 
	if a > b+c || a < b-c then
		False
	else if b > a+c || b < a-c then
		False
	else if c > a+b || c < a-b then
		False
	else 
		True

main = do
	aS <- getLine
    bS <- getLine
    cS <- getLine
    let x = (read aS :: Int)
    let y = (read bS :: Int) 
    let z = (read cS :: Int) 
    print (podeConstruir x y z)