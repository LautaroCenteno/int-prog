module Guia5 where

--2.5
quitar:: (Eq t) => t -> [t] -> [t]
quitar _ [] = []
quitar e (x:xs) | e == x = xs
                | otherwise = x:(quitar e xs)

quitarString:: String -> [String] -> [String]
quitarString _ [] = []
quitarString e (x:xs) | e == x = quitarString (e) (xs)
                      | otherwise = x:(quitar e xs)

--3.3
maximo:: [Int] -> Int
maximo (x:xs) | xs == [] = x
              | x >= head xs = maximo (x:tail xs)
              | x < head xs = maximo xs

--version 2 REVISAR Y ENTENDER
-- maximo :: [Int] -> Int
-- maximo (x:xs) | x > maximo xs = xs
--               | otherwise = maximo xs
                

--3.9
ordenar:: [Int] -> [Int]
ordenar [] = []
ordenar xs = ordenar (quitar m xs) ++ [m]
    where m = maximo xs