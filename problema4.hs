xor :: Bool -> Bool -> Bool
xor x y = 
	if x && y then
		False
	else if not x && not y then
		False
	else True

main = do
    xString <- getLine
    yString <- getLine
    let x = (read xString :: Bool)
    let y = (read yString :: Bool) 
    print (xor x y)