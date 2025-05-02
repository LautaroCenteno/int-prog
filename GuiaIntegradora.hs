module GuiaIntegradora where

import Test.HUnit

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