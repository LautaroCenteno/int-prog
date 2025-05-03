module Guia4 where

--ejercicio 1
fibonacci:: Int -> Int
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n >= 2 = fibonacci (n-1) + fibonacci (n-2)

--ejercicio 2
--parteEntera:: Float -> Integer
--parteEntera x | 

--ejercicio 3
esDivisible:: Integer -> Integer -> Bool
esDivisible 0 0 = False
esDivisible x 0 = False
esDivisible x y | div x y == 0 = True
                | otherwise = False

--ejercicio 4
sumaImpares:: Integer -> Integer
sumaImpares 0 = 0
sumaImpares x = (-1) + 2*x + sumaImpares (x-1)

--ejercicio 5
--medioFact:: Integer -> Integer 
--medioFact 0 = 0
--medioFact 1 = 1
--medioFact n = n * (medioFact ((n * (medioFact (n-1)))-1))


--ejercicio 6

--ejercicio 7
cantDigitos:: Int -> Int
cantDigitos n | n < 10 = 1
              | n >= 10 = 1 + cantDigitos(div n 10)

iesimoDigito:: Int -> Int -> Int
iesimoDigito n i = mod (div n (10^(cantDigitos(n)-i))) 10

--ejercicio 8

--ejercicio 9

--ejercicio 10

--ejercicio 11

--ejercicio 12

--ejercicio 13

--ejercicio 14
sumaPotencias:: Integer -> Integer -> Integer -> Integer
sumaPotencias q n m | n == 1 = sumaPotenciasAux q n m
sumaPotencias q n m | otherwise = sumaPotencias q (n-1) m + sumaPotenciasAux q n m

sumaPotenciasAux:: Integer -> Integer -> Integer -> Integer
sumaPotenciasAux q n m | m == 1 = q ^ (n+m)
sumaPotenciasAux q n m | otherwise = q ^ (n+m) + sumaPotenciasAux q n (m-1)

--ejercicio 15

--ejercicio 16
--a
menorDivisor:: Integer -> Integer
menorDivisor n = menorDivisorAux 2 n

menorDivisorAux:: Integer -> Integer -> Integer
menorDivisorAux d n | mod n d == 0 = d
                    | otherwise = menorDivisorAux (d+1) n
--b
esPrimo:: Integer -> Bool
esPrimo n = n == menorDivisor n
--c

--d
nEsimoPrimo:: Integer -> Integer
nEsimoPrimo 1 = 2
nEsimoPrimo n = siguientePrimo (1 +nEsimoPrimo (n-1))

--ejercicio 17

--ejercicio 18

--ejercicio 19
siguientePrimo:: Integer -> Integer
siguientePrimo n | esPrimo n = n
                 | otherwise = siguientePrimo (n+1)

esSumaInicialDePrimos:: Integer -> Bool
esSumaInicialDePrimos n = esSumaInicialDeKPrimos n 1

esSumaInicialDeKPrimos:: Integer -> Integer -> Bool
esSumaInicialDeKPrimos k n | n == sumaPrimerosKPrimos k = True
                           | sumaPrimerosKPrimos k > n = False
                           | otherwise = esSumaInicialDeKPrimos (k+1) n

sumaPrimerosKPrimos:: Integer -> Integer
sumaPrimerosKPrimos 1 = 2
sumaPrimerosKPrimos k = nEsimoPrimo k + sumaPrimerosKPrimos (k-1)

--ejercicio 20

--ejercicio 21
