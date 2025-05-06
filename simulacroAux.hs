hayQueCodificar :: Char -> [(Char, Char)] -> Bool
hayQueCodificar _ [] = False
hayQueCodificar c (x:xs) | c==(fst x) = True
                         | otherwise = hayQueCodificar c xs

cuantosCharEnString :: Char -> [Char] -> Int
cuantosCharEnString _ [] = 0
cuantosCharEnString c (x:xs) | c==x = 1 + cuantosCharEnString c xs
                             | otherwise = cuantosCharEnString c xs


cuantasVecesHayQueCodificar :: Char -> [Char] -> [(Char, Char)] -> Int
cuantasVecesHayQueCodificar c frase map | not (hayQueCodificar c map) = 0
                                        | otherwise = cuantosCharEnString c frase

laQueMasHayQueCodificar :: [Char] -> [(Char, Char)] -> Char
laQueMasHayQueCodificar (x:xs) map = laQueMasHayQueCodificarAux xs map x (cuantasVecesHayQueCodificar x (x:xs) map)
    where laQueMasHayQueCodificarAux [] _ maxC _ = maxC
          laQueMasHayQueCodificarAux (x:xs) map maxC maxNum | cuantasVecesHayQueCodificar x (x:xs) map > maxNum = laQueMasHayQueCodificarAux xs map x (cuantasVecesHayQueCodificar x (x:xs) map)
                                                            | otherwise = laQueMasHayQueCodificarAux xs map maxC maxNum


encontrarReemplazo :: Char -> [(Char, Char)] -> Char
encontrarReemplazo c (x:xs) | (fst x) == c = (snd x)
                            | otherwise = encontrarReemplazo c xs 

codificarFrase :: [Char] -> [(Char, Char)] ->[Char]
codificarFrase [] _ = []
codificarFrase (x:xs) map | hayQueCodificar x map = (encontrarReemplazo x map) : codificarFrase xs map
                          | otherwise = x : codificarFrase xs map