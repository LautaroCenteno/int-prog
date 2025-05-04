module GuiaIntegradora where
import Data.Bits (Bits(xor))

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


--ejercicio 8


--ejercicio 9


--ejercicio 10


--ejercicio 11


--ejercicio 12

