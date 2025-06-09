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

#Calcular la cantidad de operaciones T(n) que realiza la siguiente funcion, siendo n el parametro de entrada.

def producto_6(n: int) -> int:
    res: int = 1                                # 1 OE
    i: int = 1                                  # 1 OE
    while i <= 2**n:                            # 2^n+1 * 2 (la comparacion + la potencia de 2)
        producto: int = 1                       # 2^n
        j: int = 1                              # 2^n
        while j <= n:                           # 2^n * (n+1) * 1
            if (i // (2 ** (j-1))) %2 == 1:     # 2^n * n * 5
                producto = producto * j         # 
            else:                               # 2^n * n * 2
                producto = producto * 1         #
            j = j + 1                           # 2^n * n * 2
        i = i + 1                               # 2^n * 2
        res = res * producto                    # 2^n * 2
    return res                                  # 1

#¿Como es el crecimiento de T(n) con respecto a n?
#T(n) = 

#============================================================

#Guia 11 - Ejercicio 5.5

#Calcular T(n) para ambas implementaciones del siguiente problema, siendo n la cantidad de filas del a matriz m.

def diag_principal_v1(m: list[list[int]]) -> list[int]:
    res: list[int] = []                 #
    n: int = len(m)                     # T_len(m)
    i: int = 0                          # 1
    while i < n:                        # n + 1     OE (entro n veces)
        j: int = 0                      # n * 1
        while j < n:                    # n * (n+1)     OE (entro n veces)
            if i == j:                  # n * n
                res.append(m[i][j])     # T_append * n²
            j = j + 1                   # n²
        i = i + 1                       
    return res

# es mas eficiente
def diag_principal_v2(m: list[list[int]]) -> list[int]:
    res: list[int] = []         # 1
    n: int = len(m)             # 2
    i: int = 0                  # 1
    while i < n:                # n + 1
        res.append(m[i][i])     # 
        i = i + 1               #
    return res                  # 1

#T1(n) =  
#T2(n) = 

#Comparar entre si los valores de T(n) obtenidos para cada implementacion

#============================================================

#Guia 11 - Ejercicio 6.1

#Buscar el mejor y el peor caso del parametro de entrada. Calcular Tmejor(n) y Tpeor(n) y comparar ambos valores entre si, siendo n el tamaño de la lista s.

#problema contar_pares (in s:seq〈Z〉): Z {
#   requiere: {True}
#    asegura: {res = a la suma de los elementos pares de s}
#}

def contar_pares(s: list[int]) -> int:
    res: int = 0
    i: int = 0
    while i < len(s):
        if s[i] %2 == 0:
            res = res + s[i]
        i = i + 1
    return res

#============================================================

#Guia 11 - Ejercicio 6.2

#busca el mejor y el peor caso del parametro de entrada. calcular Tmejor(n) y Tpeor(n) y comparar ambos valores entre si, siendo n el tamaño de la lista s.

#problema suma hasta umbral (in s:seq〈Z〉, in umbral: Z) : Z {
#requiere: {True}
#asegura: {res = a la suma de los elementos de s menores a umbral que aparecen en forma consecutiva al inicio de s}
#}

def suma_hasta_umbral(s: list[int], umbral: int) -> int:
    res: int = 0
    i: int = 0
    while i < len(s) and s[i] < umbral:
        res = res + s[i]
        i = i + 1
    return res