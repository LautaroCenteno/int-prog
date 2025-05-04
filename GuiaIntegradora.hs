module GuiaIntegradora where

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

--ejercicio 5
--maximo:: Tablero -> Integer
--maximo ((x:xs):ys) | (x:xs) == [x] = ys:


type Fila = [Integer]
type Tablero = [Fila]
type Posicion = (Integer, Integer)
type Camino = [Posicion]

--ejercicio 6


--ejercicio 7


--ejercicio 8


--ejercicio 9


--ejercicio 10


--ejercicio 11


--ejercicio 12

