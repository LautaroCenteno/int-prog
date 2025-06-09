#Guia 11 - Ejercicio 4 (item 2)
#Calcular la cantidad de operaciones T(n) que realiza la siguiente funcion, siendo n el parametro de entrada.

def producto_1(n:int) -> int:
    res: int = 1
    i: int = 1
    while i <= n:
        res = res * i
        i = i + 1
    return res

#¿Como es el crecimiento de T(n) con respecto a n?

#1+1+(n+1)+2n+2n+1
#T(n) = 5n + 4

#===========================================================

#Guia 11 - Ejercicio 4 (item 4)

#Calcular la cantidad de operaciones T(n) que realiza la siguiente funcion, siendo n el parametro de entrada.

def producto_3(n: int) -> int:
    res:int = 1                 # 1
    i: int = 1                  # 1
    while i <= n:               # n + 1
        j: int = 1              # n * 1
        while j <= n:           # n * (n+1)
            res = res * i * j   # n*n*3
            j = j + 1           # n*n*2
        i = i + 1               # n*2
    return res                  # 1

#Como es el crecimiento de T(n) con respecto a n?

#T(n) = 1 + 1 + (n+1) + n + n² + n + 3n² + 2n² + 2n + 1
#T(n) = 6n² + 5n + 4

#============================================================

#Guia 11 - Ejercicio 4 (item 7)