module GuiaIntegradora where

import Guia4

--ejercicio 1
generarStock:: [String] -> [(String, Int)]
generarStock [] = []
generarStock (x:xs) = [(x,cantidadVeces (x) (x:xs))] ++ generarStock (quitarString (x) (xs))

quitarString:: String -> [String] -> [String]
quitarString _ [] = []
quitarString e (x:xs) | e == x = quitarString (e) (xs)
                      | otherwise = x:(quitarString e xs)

cantidadVeces:: String -> [String] -> Int
cantidadVeces _ [] = 0
cantidadVeces s (x:xs) | s /= x = cantidadVeces (s) (xs)
                       | s == x = 1 + cantidadVeces (s) (xs)

--ejercicio 2
stockDeProducto:: [(String, Integer)] -> String -> Integer
stockDeProducto [] _ = 0
stockDeProducto (x:xs) p | fst x == p = snd x
                         | fst x /= p = stockDeProducto xs p

--ejercicio 3
dineroEnStock:: [(String, Integer)] -> [(String, Float)] -> Float
dineroEnStock [] _ = 0
dineroEnStock (x:xs) (y:ys) | fst x /= fst y = dineroEnStock (x:xs) (ys ++ [y])
                            | fst x == fst y = fromIntegral (snd x) * snd y + dineroEnStock xs (y:ys) 

--ejercicio 4
aplicarOferta:: [(String, Integer)] -> [(String, Float)] -> [(String, Float)]
aplicarOferta [] _ = []
aplicarOferta (x:xs) (y:ys) | fst x /= fst y = aplicarOferta (x:xs) (ys ++ [y])
                            | fst x == fst y && snd x > 10 = (fst x, fromIntegral (snd x) * snd y * 0.80):aplicarOferta xs (y:ys)
                            | fst x == fst y && snd x <= 10 = (fst x, fromIntegral (snd x) * snd y):aplicarOferta xs (y:ys)

--ejercicio 5 (Revisar si hay una forma menos rebuscada de hacer)
type Fila = [Integer]
type Tablero = [Fila]
type Posicion = (Integer, Integer)
type Camino = [Posicion]

mayorFila:: Fila -> Fila
mayorFila (x:xs) | (x:xs) == [x] = [x]
                 | x > head xs = mayorFila (x:(tail xs))
                 | x == head xs = mayorFila (x:(tail xs))
                 | x < head xs = mayorFila xs

maximo:: Tablero -> Integer
maximo (x:xs) | (x:xs) == [x] = head x
                        | head (mayorFila x) > head (mayorFila (head xs)) = maximo ((mayorFila x):(tail xs))
                        | head (mayorFila x) == head (mayorFila (head xs)) = maximo ((mayorFila x):(tail xs))
                        | head (mayorFila x) < head (mayorFila (head xs)) = maximo xs

--ejercicio 6
conversorTablero:: Tablero -> Fila
conversorTablero (x:xs) | (x:xs) == [x] = x
                        | otherwise = x ++ (conversorTablero xs)

quitarIntFila:: Integer -> Fila -> Fila
quitarIntFila _ [] = []
quitarIntFila e (x:xs) | e == x = quitarIntFila (e) (xs)
                       | otherwise = x:(quitarIntFila e xs)

quitarIntTabla:: Integer -> Tablero -> Tablero
quitarIntTabla e (x:xs) | (x:xs) == [x] = [quitarIntFila e x]
                        | otherwise = (quitarIntFila e x):(quitarIntTabla e xs)

cantidadVecesInt:: Integer -> [Integer] -> Integer
cantidadVecesInt _ [] = 0
cantidadVecesInt s (x:xs) | s /= x = cantidadVecesInt (s) (xs)
                          | s == x = 1 + cantidadVecesInt (s) (xs)

listaApariciones:: Fila ->  [(Integer, Integer)]
listaApariciones [] = []
listaApariciones (x:xs) = [(x,cantidadVecesInt (x) (x:xs))] ++ listaApariciones (quitarIntFila (x) (xs))

masRepetido:: Tablero -> Integer
masRepetido (x:xs) | tail (listaApariciones (conversorTablero (x:xs))) == [] = fst (head (listaApariciones (conversorTablero (x:xs))))
                   | snd (head (listaApariciones (conversorTablero (x:xs)))) > snd (head (tail (listaApariciones (conversorTablero (x:xs))))) = masRepetido (quitarIntTabla (fst (head (tail (listaApariciones (conversorTablero (x:xs)))))) (x:xs))
                   | snd (head (listaApariciones (conversorTablero (x:xs)))) == snd (head (tail (listaApariciones (conversorTablero (x:xs))))) = masRepetido (quitarIntTabla (fst (head (tail (listaApariciones (conversorTablero (x:xs)))))) (x:xs))
                   | snd (head (listaApariciones (conversorTablero (x:xs)))) < snd (head (tail (listaApariciones (conversorTablero (x:xs))))) = masRepetido (quitarIntTabla (fst (head (listaApariciones (conversorTablero (x:xs))))) (x:xs))

--aparicionesPrimerElemento:: Fila -> Integer
--aparicionesPrimerElemento (x:xs) | (x:xs) == [x] = 1
--                                 | x == head xs = 1 + aparicionesPrimerElemento xs
--                                 | x /= head xs = aparicionesPrimerElemento (x:(tail xs))

--ejercicio 7
xFila:: Integer -> Tablero -> Fila
xFila 1 (x:xs) = x
xFila n (x:xs) = xFila (n-1) (xs)

xColumna:: Integer -> Fila -> Integer
xColumna 1 (x:xs) = x
xColumna n (x:xs) = xColumna (n-1) (xs)

valoresDeCamino:: Tablero -> Camino -> [Integer]
valoresDeCamino (x:xs) [] = []
valoresDeCamino (x:xs) (y:ys) = [xColumna (snd y) (xFila (fst y) (x:xs))] ++ valoresDeCamino (x:xs) ys

--ejercicio 8
esCaminoFibo:: [Int] -> Int -> Bool
esCaminoFibo [x] y = fibonacci y == x
esCaminoFibo (x:xs) y = fibonacci y == x && esCaminoFibo xs (y+1)

--ejercicio 9
divisoresPropios:: Integer -> [Integer]
divisoresPropios n = divisoresPropiosAux 1 n

divisoresPropiosAux:: Integer -> Integer -> [Integer]
divisoresPropiosAux a b | a == b = [a]
                        | a < b && mod b a == 0 = [a] ++ divisoresPropiosAux (a+1) b
                        | a < b && mod b a /= 0 = divisoresPropiosAux (a+1) b

--ejercicio 10
sumatoriaLista:: [Integer] -> Integer
sumatoriaLista (x:xs) | (x:xs) == [x] = x
                      | otherwise = x + sumatoriaLista xs

sonAmigos:: Integer -> Integer -> Bool
sonAmigos a b | a == b = False
              | sumatoriaLista (divisoresPropios a) == sumatoriaLista (divisoresPropios b) = True
              | otherwise = False

--ejercicio 11
divisoresPropiosSinN:: Integer -> [Integer]
divisoresPropiosSinN n = divisoresPropiosSinNAux 1 n

divisoresPropiosSinNAux:: Integer -> Integer -> [Integer]
divisoresPropiosSinNAux a b | a == b = []
                        | a < b && mod b a == 0 = [a] ++ divisoresPropiosSinNAux (a+1) b
                        | a < b && mod b a /= 0 = divisoresPropiosSinNAux (a+1) b

losPrimeroNPerfectos:: Integer -> [Integer]
losPrimeroNPerfectos n = losPrimeroNPerfectosAux 0 2 n

losPrimeroNPerfectosAux:: Integer -> Integer -> Integer -> [Integer]
losPrimeroNPerfectosAux a b c | a == c = []
                              | a < c && sumatoriaLista (divisoresPropiosSinN b) /= b = losPrimeroNPerfectosAux a (b+1) c
                              | a < c && sumatoriaLista (divisoresPropiosSinN b) == b = [b] ++ losPrimeroNPerfectosAux (a+1) (b+1) c

--ejercicio 12
listaDeAmigos:: [Integer] -> [(Integer, Integer)]
listaDeAmigos x = listaDeAmigosAux x x x

listaDeAmigosAux:: [Integer] -> [Integer] -> [Integer] -> [(Integer, Integer)]
listaDeAmigosAux [] _ _ = []
listaDeAmigosAux x [] z = listaDeAmigosAux (tail x) z z
listaDeAmigosAux x y z | sonAmigos (head x) (head y) == True && pertenece (head x) z = [(head x, head y)] ++ listaDeAmigosAux x (tail y) (quitar (head x) (quitar (head y) z))
                       | otherwise = listaDeAmigosAux x (tail y) z

quitar:: Integer -> [Integer] -> [Integer]
quitar _ [] = []
quitar x y | x == (head y) = quitar x (tail y)
           | x /= (head y) = [head y] ++ quitar x (tail y)

pertenece:: Integer -> [Integer] -> Bool
pertenece _ [] = False
pertenece x y | x == head y = True
pertenece x y | x /= head y = pertenece x (tail y)