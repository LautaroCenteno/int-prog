module Guia5 where
import GHC.Exception (fromCallSiteList)

--ejercicio 1
--1.1
longitud:: [t] -> Integer
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

--1.2
ultimo:: [t] -> t
ultimo [x] = x
ultimo (x:xs) = ultimo xs

--1.3
principio:: [t] -> [t]
principio [x] = []
principio (x:xs) = x:principio xs

--1.4
reverso:: [t] -> [t]
reverso [] = []
reverso (x:xs) = ultimo (x:xs):reverso(principio (x:xs))

--ejercicio 2
--2.1
pertenece:: (Eq t) => t -> [t] -> Bool
pertenece _ [] = False
pertenece x (y:ys) | x == y = True || pertenece x ys
                   | otherwise = pertenece x ys

--2.2
todosIguales:: (Eq t) => [t] -> Bool
todosIguales [] = False
todosIguales [x] = True
todosIguales (x:y:xs) | x == y = True && todosIguales (y:xs)
                      | otherwise = False

--2.3
todosDistintos:: (Eq t) => [t] -> Bool
todosDistintos [] = True
todosDistintos [x] = True
todosDistintos (x:xs) | pertenece x xs = False
                      | otherwise = True && todosDistintos xs

--2.4
hayRepetidos:: (Eq t) => [t] -> Bool
hayRepetidos x = not(todosDistintos x)

--2.5
quitar:: (Eq t) => t -> [t] -> [t]
quitar _ [] = []
quitar e (x:xs) | e == x = xs
                | otherwise = x:(quitar e xs)

quitarString:: String -> [String] -> [String]
quitarString _ [] = []
quitarString e (x:xs) | e == x = quitarString (e) (xs)
                      | otherwise = x:(quitar e xs)

--2.6
quitarTodos :: (Eq t ) => t -> [t] -> [t]
quitarTodos _ [] = []
quitarTodos n (x:xs) | n == x = quitarTodos n xs
                     | otherwise = [x] ++ quitarTodos n xs

--2.7
eliminarRepetidos:: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos [x] = [x]
eliminarRepetidos (x:xs) = x:eliminarRepetidos (quitarTodos x xs)

--2.8
mismosElementos:: (Eq t) => [t] -> [t] -> Bool
mismosElementos x y = mismosElementosAux (eliminarRepetidos x) (eliminarRepetidos y)

mismosElementosAux:: (Eq t) => [t] -> [t] -> Bool
mismosElementosAux [] [] = True
mismosElementosAux x y | longitud x /= longitud y = False
                       | pertenece (head x) y = True && mismosElementosAux (tail x) (quitar (head x) y)
                       | otherwise = False

--2.9
capicua :: (Eq t) => [t] -> Bool
capicua x | x == reverso x = True
          | otherwise = False

--ejercicio 3
--3.1

--3.2

--3.3
maximo:: [Int] -> Int
maximo (x:xs) | xs == [] = x
              | x >= head xs = maximo (x:tail xs)
              | x < head xs = maximo xs

--version 2 REVISAR Y ENTENDER
-- maximo :: [Int] -> Int
-- maximo (x:xs) | x > maximo xs = x
--               | otherwise = maximo xs

--3.4

--3.5

--3.6

--3.7

--3.8

--3.9
ordenar:: [Int] -> [Int]
ordenar [] = []
ordenar xs = ordenar (quitar m xs) ++ [m]
    where m = maximo xs

--ejercicio 4.a
--a

--b

--c

--d

--e

--f

--g

--ejercicio 4.b

--ejercicio 5
--5.1

--5.2

--ejercicio 6

--a

--b

--c

--ejercicio 7

--7.1

--7.2

--7.3

--7.4
