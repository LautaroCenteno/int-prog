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

--ejercicio 3

--ejercicio 4

--ejercicio 5

--ejercicio 6

--ejercicio 7

--ejercicio 8

--ejercicio 9

--ejercicio 10

--ejercicio 11

--ejercicio 12
