data Ponto = DoisD Float Float
menorDistancia :: [Ponto] -> Float
menorDistancia [] = 0
menorDistancia [_] = 0
menorDistancia (x:xs) = 

dist :: Ponto -> Ponto -> Float
dist (DoisD a1 b1) (DoisD a2 b2) = sqrt (a*a + b*b)
    where
        a = a1 - a2
        b = b1 - b2

menorElemento :: [Float] -> Float
menorElemento [] = 0
menorElemento [x] = x
menorElemento (x:xs) | x < menorElemento(xs) = x
					 |menorElemento(xs)

arrayDeDistancias :: [Ponto] -> [Float]
arrayDeDistancias [_] = [0]
arrayDeDistancias (x:xs) = dist x arrayDeDistancias xs:[] 