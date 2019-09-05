media :: Float -> Float -> Float -> String
media x y z = 
	if (x+y+z)/3 >= 6 then
	    "Aprovado"
	else
	    "Reprovado"

main = do
    xS <- getLine
    yS <- getLine
    zS <- getLine
    let x = (read xS :: Float)
    let y = (read yS :: Float) 
    let z = (read zS :: Float) 
    print (media x y z)