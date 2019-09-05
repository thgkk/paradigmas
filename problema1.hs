exponencial :: Float -> Float -> Float
exponencial x y = x ** y

main = do
    xString <- getLine
    yString <- getLine
    let x = (read xString :: Float)
    let y = (read yString :: Float)
    print (exponencial x y)
