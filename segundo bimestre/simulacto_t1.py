"""
Yo:
@author: <COMPLETE SU NOMBRE ACÁ>
Certifico que el siguiente archivo fue elaborado únicamente por mí.

Siendo la última modificación con la solución final:
@date: <COMPLETE FECHA y HORA DE ULTIMA MODIFICACIÓN ACA>
"""
from queue import Queue as Cola

# Ejercicio 1
def cant_apariciones_consec(n: int, l: list[int]) -> int:
    res: int = 0
    racha_actual: int = 0
    for i in range(len(l)):
        if l[i] == n:
            racha_actual += 1
        else:
            if racha_actual > res:
                res = racha_actual
            racha_actual = 0
    if racha_actual > res:
        res = racha_actual
    return res

def maximas_cantidades_consecutivos (v: list[int]) -> dict[int,int]:
    res: dict[int,int] = {}
    for i in v:
        if i not in res:
            res[i] = cant_apariciones_consec(i,v)
    return res
print(maximas_cantidades_consecutivos([2,2,2,4,3,5,2,2,6,6,6,6,7]))
 
# Ejercicio 2
def maxima_cantidad_primos( A: list[list[int]]) -> int:
    return -1

# Ejercicio 3
def tuplas_positivas_y_negativas(c: Cola[tuple[int, int]]) -> None:
    return

# Ejercicio 4
def resolver_cuenta(s: str) -> float:
    return -1.0
