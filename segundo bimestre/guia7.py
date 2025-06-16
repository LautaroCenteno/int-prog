from queue import LifoQueue as Pila
from queue import Queue as Cola
import random

#ejercicio 1.1
def pertenece(s: list[int], e: int) -> bool:
    for i in s:
        if i == e:
            return True
    return False

#ejercicio 1.2
def divide_a_todos(s: list[int], e: int) -> bool:
    if len(s) == 0:
        return False
    for i in range(0,len(s)):
        if (s[i] % e) != 0:
            return False
    return True

#ejercicio 1.3
def suma_total (s: list[int]) -> int:
    sumatoria: int = 0
    for i in s:
        sumatoria += i
    return sumatoria

#ejercicio 1.4
def maximo(s: list[int]) -> int:
    res: int = s[0]
    for i in range(0,len(s)):
        if s[i] > res:
            res = s[i]
    return res

#ejercicio 1.5
def minimo(s: list[int]) -> int:
    res: int = s[0]
    for i in range(0,len(s)):
        if s[i] < res:
            res = s[i]
    return res

#ejercicio 1.6
def ordenados(s: list[int]) -> bool:
    if len(s) == 0 or len(s) == 1:
        return True
    for i in range(0,len(s)-1):
        if s[i] > s[i+1]:
            return False
    return True

#ejercicio 1.7
def pos_maximo(s: list[int]) -> int:
    if len(s) == 0:
        return -1
    pos: int = 0
    for i in range(1,len(s)):
        if s[i] > s[pos]:
            pos = i
    return pos

#ejercicio 1.8
def pos_minimo(s: list[int]) -> int:
    if len(s) == 0:
        return -1
    pos: int = 0
    for i in range(1,len(s)):
        if s[i] < s[pos]:
            pos = i
    return pos

#ejercicio 1.9
def long_mayorASiete(s: list[str]) -> bool:
    for i in range(len(s)):
        if len(s[i]) > 7:
            return True
    return False

#ejercicio 1.10
def es_palindroma(s: str) -> bool:
    reverso: str = ""
    for i in range(len(s)-1,-1,-1):
        reverso += s[i]
    return s == reverso

#ejercicio 1.11
def iguales_consecutivos(s: list[int]) -> bool:
    for i in range(len(s)-2):
        if s[i] == s[i+1] and s[i] == s[i+2]:
            return True
    return False

#ejercicio 1.12
def vocales_distintas(s: str) -> bool:
    cant_vocales: int = 0
    vocales_usadas: str = ""
    for i in s:
        if i in "aeiou" and not(i in vocales_usadas):
            cant_vocales += 1
            vocales_usadas += i
    return cant_vocales>=3

#ejercicio 1.13
def pos_secuencia_ordenada_mas_larga(s: list[int]) -> int:
    sec_max: int = 1
    sec_actual: int = 1
    pos_actual: int = 0
    pos_maximo: int = 0
    for i in range(len(s)-1):
        if s[i] <= s[i+1]:
            if sec_actual == 1:
                pos_actual = i
            sec_actual += 1
        else:
            if sec_actual > sec_max:
                sec_max = sec_actual
                pos_maximo = pos_actual
            sec_actual = 1
            pos_actual = 0
    if sec_actual > sec_max:
                sec_max = sec_actual
                pos_maximo = pos_actual
    return pos_maximo

#ejercicio 1.14
def cantidad_digitos_impares(s: list[int]) -> int:
    res: int = 0
    for i in s:
        for p in str(i):
            if int(p)%2 != 0:
                res += 1
    return res

#ejercicio 2.1
def CerosEnPosicionesPares(s: list[int]) -> None:
    for i in range(len (s)):
        if i % 2 ==0:
            s[i] = 0

#ejercicio 2.2
def CerosEnPosicionesPares2(s: list[int]):
    for i in range(0,len (s),2):
        s[i] = 0
        s[i+1] = s[i+1]

#ejercicio 2.3


#ejercicio 2.4


#ejercicio 2.5


#ejercicio 2.6


#ejercicio 3


#ejercicio 4


#ejercicio 5.1


#ejercicio 5.2


#ejercicio 5.3


#ejercicio 5.4


#ejercicio 6.1


#ejercicio 6.2


#ejercicio 6.3


#ejercicio 6.4


#ejercicio 6.5


#ejercicio 6.6


#ejercicio 7.1


#ejercicio 7.2


#ejercicio 7.3


#ejercicio 7.4


#============================================================

def inflacion_total(s:list[float]) -> float:
    inflacion: float = 100
    for i in s:
        inflacion *= (i/100.0 + 1.0)
    return (inflacion - 100)

lista: list[int] = [4,2,5,1,4,3]

def racha_inflacion_mas_larga(s:list[float]) -> int:
    racha_mas_larga: int = 0
    racha_actual: int = 0
    for i in range(len(s)):
        if s[i] > 5:
            racha_actual += 1
            if racha_mas_larga < racha_actual:
                racha_mas_larga = racha_actual
        else:
            racha_actual = 0 
    return racha_mas_larga

def columnas_ordenada(s: list[list[int]], c:int) -> bool:
    res: bool = True
    for i in range (len(s)-1):
        res = res and s[i][c] <= s[i+1][c]
    return res

def columnas_ordenadas(m: list[list[int]]) -> list[bool]:
    res: list[bool] = []
    cant_col: int = len(m[0])
    for c in range (cant_col):
        res.append(columnas_ordenada(m, c))
    return res
