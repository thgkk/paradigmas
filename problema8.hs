raizes :: Float -> Float -> Float -> [Float]
raizes a b c = [-b+(sqrt b**b - 4*a*c),]
		
main = do
	xString <- getLine
    yString <- getLine
    zString <- getLine
    let x = (read xString :: Int)
    let y = (read yString :: Int) 
    let z = (read yString :: Int) 
    print (podeConstruir x y z)