--ejercicio 1
hayPrimosGemelos :: Integer -> Integer -> Bool
hayPrimosGemelos x y = hayPrimosGemelosEnLista (primosEntre x y)

menorDivisor:: Integer -> Integer
menorDivisor 0 = 1
menorDivisor 1 = 1
menorDivisor x = menorDivisorAux x 2

menorDivisorAux:: Integer -> Integer -> Integer
menorDivisorAux x y | mod x y == 0 = y
                    | otherwise = menorDivisorAux x (y+1)

esPrimo:: Integer -> Bool
esPrimo 1 = False
esPrimo x = menorDivisor x == x

primosEntre:: Integer -> Integer -> [Integer]
primosEntre x y | x == y && esPrimo x = [x]
                | x == y && esPrimo x == False = []
                | esPrimo x == True = [x] ++ primosEntre(x+1) y
                | esPrimo x == False = primosEntre(x+1) y

sonPrimosGemelos:: Integer -> Integer -> Bool
sonPrimosGemelos 1 _ = False
sonPrimosGemelos _ 1 = False
sonPrimosGemelos x y | x == (y-2) || x == (y+2) = True
                     | otherwise = False

hayPrimosGemelosEnLista:: [Integer] -> Bool
hayPrimosGemelosEnLista [] = False
hayPrimosGemelosEnLista [x] = False
hayPrimosGemelosEnLista (x:xs) | hayPrimosGemelosEnListaAux x xs == True = True
                               | otherwise = hayPrimosGemelosEnListaAux (head xs) (xs)

hayPrimosGemelosEnListaAux:: Integer -> [Integer] -> Bool
hayPrimosGemelosEnListaAux _ []  = False
hayPrimosGemelosEnListaAux n (x:xs) | sonPrimosGemelos n x = True
                                    | not(sonPrimosGemelos n x) = False || hayPrimosGemelosEnListaAux n xs

eliminarTodo:: Integer -> [Integer] -> [Integer]
eliminarTodo _ [] =  []
eliminarTodo x (y:ys) | x == y = eliminarTodo x ys
                      | x /= y = [y] ++ eliminarTodo x ys

--ejercicio 2
materiasTurnoTarde :: [(String, String, Integer, Integer)] -> [String]
materiasTurnoTarde [] = []
materiasTurnoTarde ((a,b,c,d):xs) | c >= 14 && c < 17 && d > 14 && d <= 17 = eliminarRepetidos([a] ++ materiasTurnoTarde xs)
                                  | otherwise = materiasTurnoTarde xs

eliminarTodoString:: String -> [String] -> [String]
eliminarTodoString _ [] =  []
eliminarTodoString x (y:ys) | x == y = eliminarTodoString x ys
                            | x /= y = [y] ++ eliminarTodoString x ys

eliminarRepetidos:: [String] -> [String]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) = [x] ++ eliminarRepetidos (eliminarTodoString x xs)

perteneceString:: String -> [String] -> Bool
perteneceString x [] = False
perteneceString x (y:ys) | x == y = True
                         | x /= y = False || perteneceString x ys

--ejercicio 3
maximaSumaDeTresConsecutivos :: [Integer] -> Integer
maximaSumaDeTresConsecutivos x = maximoEnLista (listaSumasTresConsecutivos x)

listaSumasTresConsecutivos:: [Integer] -> [Integer]
listaSumasTresConsecutivos [] = []
listaSumasTresConsecutivos [x] = []
listaSumasTresConsecutivos [x,y] = []
listaSumasTresConsecutivos (x:y:z:xs) = [(x+y+z)] ++ listaSumasTresConsecutivos (y:z:xs)

maximoEnLista:: [Integer] -> Integer
maximoEnLista [x] = x
maximoEnLista (x:xs) | x >= (head xs) = maximoEnLista (x:(tail xs))
                     | otherwise = maximoEnLista xs

--ejercicio 4
sumaIesimaColumna :: [[Integer]] -> Integer -> Integer
sumaIesimaColumna [] y = 0
sumaIesimaColumna (x:xs) y | xs == [] = nElemento x y
                           | otherwise = nElemento x y + sumaIesimaColumna xs y

nElemento:: [Integer] -> Integer -> Integer
nElemento (x:xs) 1 = x
nElemento (x:xs) y = nElemento xs (y-1)