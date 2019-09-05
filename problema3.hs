areaRetangulo :: Float -> Float -> Float
areaRetangulo base altura = base * altura
main = do
    baseString <- getLine
    alturaString <- getLine
    let base = (read baseString :: Float)
    let altura = (read alturaString :: Float)
    print (areaRetangulo base altura)
