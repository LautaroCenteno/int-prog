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
 
# Ejercicio 2
def es_primo(n: int) -> bool:
    cant_div: int = 0
    for i in range(1,n+1):
        if n%i == 0:
            cant_div += 1
    if cant_div == 2:
        return True
    return False


def maxima_cantidad_primos( A: list[list[int]]) -> int:
    res: int = 0
    if len(A[0]) == 0:
        return 0
    for i in range(len(A[0])):
        cant_actual: int = 0
        for t in range(len(A)):
            if es_primo(A[t][i]):
                cant_actual += 1
        if cant_actual > res:
            res = cant_actual
    return res


# Ejercicio 3
def mostrar_cola(c: Cola) -> None:
    aux = []
    while not c.empty():
        x = c.get()
        print(x)
        aux.append(x)
    for x in aux:
        c.put(x)

def tuplas_positivas_y_negativas(c: Cola[tuple[int, int]]) -> None:
    tuplas_positivas: list[tuple[int,int]] = []
    tuplas_negativas: list[tuple[int,int]] = []
    while not(c.empty()):
        tupla: tuple[int, int] = c.get()
        if tupla[0]*tupla[1] > 0:
            tuplas_positivas.append(tupla)
        if tupla[0]*tupla[1] < 0:
            tuplas_negativas.append(tupla)
    for i in tuplas_positivas:
        c.put(i)
    for i in tuplas_negativas:
        c.put(i)
    return
'''
cola = Cola()
cola.put((5, 2))
cola.put((-3, -1))
cola.put((-2, 4))
cola.put((1, 4))
cola.put((0, 4))
tuplas_positivas_y_negativas(cola)
mostrar_cola(cola)
'''

# Ejercicio 4
def pertenece(n: str, s: str) -> bool:
    for i in s:
        if i == n:
            return True
    return False

def string_a_lista(s: str) -> list[str]:
    res: list[str] = []
    for i in s:
        res.append(i)
    return res

def resolver_cuenta(s: str) -> float:
    operacion = string_a_lista(s)
    res: float = 0
    actual: str = ""
    while not(len(operacion) == 0):
        if pertenece(operacion[0],"1234567890."):
            actual += operacion.pop(0)
        elif operacion[0] == "+"and actual != "":
            operacion.pop(0)
            res += float(actual)
            actual = ""
        elif operacion[0] == "-" and actual != "":
            res += float(actual)
            actual = ""
            actual += operacion.pop(0)
        elif operacion[0] == "+"and actual == "":
            operacion.pop(0)
        elif operacion[0] == "-" and actual == "":
            actual += operacion.pop(0)
    res += float(actual)
    return res

print(resolver_cuenta('-1.1'))