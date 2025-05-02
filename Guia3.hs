module Guia3 where
    
--Ejercicio 1

--a
f:: Integer->Integer
f 1 = 8
f 4 = 131
f 16 = 16

--b
g:: Integer->Integer
g 8 = 16
g 16 = 4
g 131 = 1

--c
h:: Integer->Integer
h x = f (g x)

k:: Integer->Integer
k x = g(f x)

--Ejercicio 2

--a
absoluto:: Integer->Integer
absoluto x | x>=0 = x
           | x<0 = -x

--b
maximoAbsoluto:: Integer->Integer->Integer
maximoAbsoluto x y | x>=0 && y>=0 && x>=y = x --REHACERLO CON LA FUNCION absoluto()
                   | x>=0 && y>=0 && y>x = y
                   | x<0 && y<0 && x<=y = -x
                   | x<0 && y<0 && y<x = -y
                   | x>=0 && y<0 && x>=(-y) = x
                   | x>=0 && y<0 && (-y)>x = -y
                   | x<0 && y>=0 && (-x)>=y = -x
                   | x<0 && y>=0 && y>(-x) = y

--c
maximo3:: Integer->Integer->Integer->Integer
maximo3 x y z | x>=y && x>=z = x
              | y>=x && y>=z = y
              | z>=x && z>=y = z

--d
algunoEsCero:: Rational -> Rational -> Bool
algunoEsCero x y | x == 0 || y == 0 = True
                 | otherwise = False

algunoEsCero2:: Rational -> Rational -> Bool
algunoEsCero2 0 _ = True
algunoEsCero2 _ 0 = True
algunoEsCero2 _ _ = False

--e
ambosSonCero:: Rational -> Rational -> Bool
ambosSonCero x y | x == 0 && y == 0 = True
                 | otherwise = False

ambosSonCero2:: Rational -> Rational -> Bool
ambosSonCero2 0 0 = True
ambosSonCero2 _ _ = False

--f
enMismoIntervalo:: Float -> Float -> Bool
enMismoIntervalo x y | x <= 3 && y <= 3 = True
                     | x > 3 && x <= 7 && y > 3 && y <= 7 = True
                     | x > 7 && y > 7 = True
                     | otherwise = False
--g
sumaDistintos:: Integer -> Integer -> Integer -> Integer
sumaDistintos x y z | x == y && y == z = x
                    | x == y = x + z
                    | x == z = x + y
                    | y == z = x + y
                    | otherwise = x + y + z

--h
esMultiploDe:: Integer -> Integer -> Bool
esMultiploDe x y | mod x y == 0 = True
                 | otherwise = False

--i
digitoUnidades:: Integer -> Integer
digitoUnidades x = mod x 10

--j

digitoDecenas:: Integer -> Integer
digitoDecenas x = div (mod x 100) 10

--ejercicio 3

--ejercicio 4

--a
productoInterno:: (Float, Float) -> (Float, Float) -> Float
productoInterno (a,b) (c,d) = a*c + b*d

--b
esParMenor:: (Float, Float) -> (Float, Float) -> Bool
esParMenor (a,b) (c,d) | a<c && b<d = True
                       | otherwise = False

--todoMenor2:: (Float, Float) -> (Float, Float) -> Bool

--c
distancia:: (Float, Float) -> (Float, Float) -> Float
distancia (a,b) (c,d) = sqrt(((a-c)^2) + ((b-d)^2))

--d
sumaTerna:: (Int, Int, Int) -> Int
sumaTerna (x,y,z) = x + y + z

--e
sumarSoloMultiplos:: (Int, Int, Int) -> Int -> Int
sumarSoloMultiplos (a, b, c) d | mod a d == 0 && mod b d == 0 && mod c d == 0 = a + b + c
                               | mod a d == 0 && mod b d == 0 = a + b
                               | mod b d == 0 && mod c d == 0 = b + c
                               | mod a d == 0 && mod c d == 0 = a + c
                               | mod a d == 0 = a
                               | mod b d == 0 = b
                               | mod c d == 0 = c
                               | otherwise = 0  

--f
esPar:: Integer -> Bool
esPar n = mod n 2 == 0

posPrimerPar:: (Integer, Integer, Integer) -> Integer
posPrimerPar (x, y, z) | mod x 2 == 0 = 1
                       | mod y 2 == 0 = 2
                       | mod z 2 == 0 = 3
                       | otherwise = 4

--g
crearPar:: a -> b -> (a, b)
crearPar x y = (x, y)

--h
invertir:: (a, b) -> (b, a)
invertir (x, y) = (y, x)

--i
type Punto2D = (Float, Float)

productoInterno2:: Punto2D -> Punto2D -> Float
productoInterno2 (a,b) (c,d) = a*c + b*d

esParMenor2:: Punto2D -> Punto2D -> Bool
esParMenor2 (a,b) (c,d) | a<c && b<d = True
                       | otherwise = False

distancia2:: Punto2D -> Punto2D -> Float
distancia2 (a,b) (c,d) = sqrt(((a-c)^2) + ((b-d)^2))

--ejercicio 5

--ejercicio 6
bisiesto:: Integer -> Bool
bisiesto x | mod x 4 /= 0 = False
           | mod x 100 == 0 && mod x 400 /= 0 = False
           | otherwise = True

--ejercicio 7

--ejercicio 8

--ejercicio 9
