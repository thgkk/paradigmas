data Ponto = DoisD Float Float

det :: Ponto -> Ponto -> Ponto -> Float
det (DoisD a b) (DoisD c d) (DoisD e f) = a * d + b * e + c * f - d * e - a * f - b * c

colineares :: Ponto -> Ponto -> Ponto -> Bool
colineares a b c | det a b c == 0 = True
                 | otherwise = False

main = do 
        print (colineares (DoisD 0 0) (DoisD 0 0) (DoisD 0 0))
