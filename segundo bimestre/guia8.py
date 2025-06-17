from queue import LifoQueue as Pila
from queue import Queue as Cola
import random

#ejercicio 1
def generar_nros_al_azar(cantidad: int, desde: int, hasta: int) -> Pila[int]:
    p: Pila[int] = Pila()
    for i in range(cantidad):
         p.put(random.randint(desde, hasta))
    return p

#ejercicio 2
def cantidad_elementos(p: Pila) -> int:
    res: int = 0
    while not(p.empty()):
        res += 1
        p.get()
    return res

def imprimir_pila(p: Pila[int]) -> None:
    l: list[int] = []
    while not p.empty():
        elem= p.get()
        print(elem)
        l.append(elem)

    for i in range(len(l)-1, -1, -1):
        p.put(l[i])

#ejercicio 3
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

#ejercicio 4
def buscar_nota_maxima(p: Pila[tuple[str,int]]) -> tuple[str,int]:
    l:list[int] = []
    res: tuple[str,int] = p.get()
    nota_max: int = res[1]
    l.append(res)
    while not(p.empty()):
        tupla: tuple[str,int] = p.get()
        nota: int = tupla[1]
        l.append(tupla)
        if nota > nota_max:
            res = tupla
            nota_max = nota
    return res
"""
pila: Pila[tuple[str,int]] = Pila()
pila.put(("mate", 10))
pila.put(("ip", 9))
print(buscar_nota_maxima(pila))
"""

#ejercicio 13.1
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

#ejercicio 13.2