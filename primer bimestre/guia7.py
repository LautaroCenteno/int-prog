from queue import LifoQueue as Pila
from queue import Queue as Cola
import random

def pertenece(s: list[int], e: int) -> bool:
    for i in s:
        if i == e:
            return True
    return False

def suma_total (s: list[int]) -> int:
    sumatoria: int = 0
    for i in s:
        sumatoria += i
    return sumatoria

def inflacion_total(s:list[float]) -> float:
    inflacion: float = 100
    for i in s:
        inflacion *= (i/100.0 + 1.0)
    return (inflacion - 100)

lista: list[int] = [4,2,5,1,4,3]

def CerosEnPosicionesPares(s: list[int]) -> None:
    for i in range(len (s)):
        if i % 2 ==0:
            s[i] = 0


def CerosEnPosicionesPares2(s: list[int]):
    for i in range(0,len (s),2):
        s[i] = 0
        s[i+1] = s[i+1]

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

def generar_nros_al_azar(cantidad: int, desde: int, hasta: int) -> Pila[int]:
    p: Pila[int] = Pila()
    for i in range(cantidad):
         p.put(random.randint(desde, hasta))
    return p

def imprimir_pila(p: Pila[int]) -> None:
    l: list[int] = []
    while not p.empty():
        elem= p.get()
        print(elem)
        l.append(elem)

    for i in range(len(l)-1, -1, -1):
        p.put(l[i])


"""
def buscar_el_maximo(p: Pila[int]) -> int:
    l: list[int] = []
    while not p.empty():
        elem = p.get()
        l.append(elem)

    for i in range(len(l)-1, -1, -1):
        p.put(l[i])
    
    print(l)

    maximo: int = 0
    for i in range(len(l)-1):
        if l[i] >= l[i+1]:
            maximo = l[i]
        else:
            maximo = l[i+1]
    return maximo
"""

#REVISAR

def buscar_el_maximo(p: Pila[int]) -> int:
    l:list[int] = [] #para conservar la pila
    maximo: int = p.get()
    l.append(maximo)

    while not p.empty():
        elem: int = p.get()
        if elem > maximo:
            maximo = elem

    #restauro la pila
    for i in range(len(l)-1, -1, -1):
        p.put(l[i])
    
    return maximo

""""
pila: Pila[int] = generar_nros_al_azar(3,5,20)
imprimir_pila(pila)
print(buscar_el_maximo(generar_nros_al_azar(5,1,20)))
"""

def armar_secuencia_de_bingo() -> Cola[int]:
    cola: Cola[int] = Cola()

    #creo la lista con los primeros 100 numeros ordenados
    numeros: list[int] = []
    random.shuffle(numeros)

    #mezclo
    random.shuffle(numeros)

    #los inserto en la cola
    for i in range(len(numeros)):
        cola.put(numeros[i])

    return cola

print(armar_secuencia_de_bingo())