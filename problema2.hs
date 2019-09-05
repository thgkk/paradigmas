modulo :: Float -> Float
modulo x =
	if x >= 0 then
		x
	else 
		-x
main = do
	xString <- getLine
	let x = (read xString :: Float)
	print (modulo x)