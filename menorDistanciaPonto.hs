data Ponto = DoisD Float Float

dist :: Ponto -> Ponto -> Float
dist (DoisD a1 b1) (DoisD a2 b2) = sqrt (aa + bb)
    where
        a = a1 - a2
        b = b1 - b2

menorDistancia :: [Ponto] -> Float
menorDistancia p = minimo (todasDistancias p)

minimo :: [Float] -> Float
minimo (x:[]) = x
minimo (x:xs) | x < (minimo xs) = x
              | otherwise = minimo xs

todasDistancias :: [Ponto] -> [Float]
todasDistancias (x:xs) = pnTodasDistancias x xs

pnTodasDistancias :: Ponto -> [Ponto] -> [Float]
pnTodasDistancias p (x:[]) = [dist p x]
pnTodasDistancias p (x:xs) = [dist p x] ++ pnTodasDistancias p xs ++ pnTodasDistancias x xs

main = do
        print (menorDistancia [(DoisD 1 5), (DoisD 2 3), (DoisD 5 7)])
