--ejercicio 1
hayQueCodificar :: Char -> [(Char,Char)] -> Bool
hayQueCodificar a b | b == [] = False
                    | a == fst (head b) = True
                    | a /= fst (head b) = hayQueCodificar a (tail b)
                    | otherwise = False

--ejercicio 2
cuantasVecesHayQueCodificar :: Char -> [Char] -> [(Char,Char)] -> Int
cuantasVecesHayQueCodificar x y z | hayQueCodificar x z == False = 0
                                  | y == [] = 0
                                  | x == head y = 1 + cuantasVecesHayQueCodificar x (tail y) z 
                                  | x /= head y = cuantasVecesHayQueCodificar x (tail y) z 

--ejercicio 3
laQueMasHayQueCodificar :: [Char] -> [(Char,Char)] -> Char
laQueMasHayQueCodificar a b = laQueMasHayQueCodificarAux a a b

laQueMasHayQueCodificarAux :: [Char] -> [Char]-> [(Char,Char)] -> Char
laQueMasHayQueCodificarAux a b c | tail b == [] = head b
                                 | hayQueCodificar (head b) c == False = laQueMasHayQueCodificarAux a (tail b) c
                                 | hayQueCodificar (head b) c == True && hayQueCodificar (head (tail b)) c == True && cuantasVecesHayQueCodificar (head b) a c > cuantasVecesHayQueCodificar (head (tail b)) a c = laQueMasHayQueCodificarAux a ((head b):(tail (tail b))) c
                                 | hayQueCodificar (head b) c == True && hayQueCodificar (head (tail b)) c  == True && cuantasVecesHayQueCodificar (head b) a c == cuantasVecesHayQueCodificar (head (tail b)) a c = laQueMasHayQueCodificarAux a ((head b):(tail (tail b))) c
                                 | hayQueCodificar (head b) c == True && hayQueCodificar (head (tail b)) c  == True && cuantasVecesHayQueCodificar (head b) a c < cuantasVecesHayQueCodificar (head (tail b)) a c = laQueMasHayQueCodificarAux a (tail b) c
                                 | hayQueCodificar (head b) c == True && hayQueCodificar (head (tail b)) c == False = laQueMasHayQueCodificarAux a ((head b):(tail (tail b))) c

--ejercicio 4
--codificarFrase :: [Char] -> [(Char,Char)] -> [Char]
--codificarFrase a b = codificarFraseAux a a b

--codificarFraseAux:: [Char] -> [Char] -> [(Char,Char)] -> [Char]
--codificarFraseAux a b c | hayQueCodificar (head b) c == False = laQueMasHayQueCodificarAux a (tail b) c


--letraMapeo:: Char -> [(Char,Char)] -> Char
--letraMapeo a b | a == fst (head b) = snd (head b)
--               | a /= fst (head b) = letraMapeo a (tail b)

--primerMapeo:: [Char] -> [(Char,Char)] -> Int
--primerMapeo a b | hayQueCodificar (head a) b == True = 1
--                | hayQueCodificar (head a) b == False = 1 + primerMapeo (tail a) b

--reempazarPosPor:: Int -> [Char] -> Char -> [Char]
--reempazarPosPor a b c | a == 1 = c:(tail b)
--                      | a > 1 = reempazarPosPor


