import math

#ejercicio 1.1
def imprimir_hola_mundo() -> None:
    print("¡Hola mundo!")

#ejercicio 1.2
def imprimir_un_verso() -> None:
    print("Verso1...\n" "Verso2... \n" "Verso3...")

#ejercicio 1.3


#ejercicio 1.4


#ejercicio 1.5
def perimetro() -> float:
    p:int = 2 * math.pi
    return p

#ejercicio 2.1


#ejercicio 2.2


#ejercicio 2.3


#ejercicio 2.4


#ejercicio 2.5
def es_multiplo_de(n: int, m: int) -> bool:
    if n%m == 0:
        return True
    else:
        return False

#ejercicio 2.6
def es_par(numero: int) -> bool:
    if es_multiplo_de(numero, 2) == True:
        return True
    else:
        return False
    
#ejercicio 2.7


#ejercicio 3.1
def alguno_es_0(numero1: float, numero2: float) -> bool:
    return numero1 == 0 or numero2 == 0

#ejercicio 3.2
def ambos_son_0(numero1: float, numero2: float) -> bool:
    return numero1 == 0 and numero2 == 0

#ejercicio 3.3
def es_nombre_largo(nombre: str) -> bool:
    longitud: int = len(nombre)
    return 3 <= longitud <= 8

#ejercicio 3.4
def es_bisiesto(año: int) -> bool:
    return año%400 == 0 or (año%4 == 0 and año%100 != 0)

#ejercicio 4.1


#ejercicio 4.2


#ejercicio 4.3


#ejercicio 4.4


#ejercicio 5.1
def devolver_el_doble_si_es_par(numero: int) -> int:
    if numero%2 == 0:
        return numero*2
    return numero

#ejercicio 5.2


#ejercicio 5.3


#ejercicio 5.4


#ejercicio 5.5


#ejercicio 5.6


#ejercicio 6.1


#ejercicio 6.2
def n_pares_entre_10_40() -> None:
    n: int = 10
    while n <= 40:
        print(n)
        n += 2

def n_pares_entre_10_40_for() -> None:
    for i in range(10, 42, 2):
        print(i)

#ejercicio 6.3


#ejercicio 6.4
def cuenta_regresiva(n:int) -> None:
    while n > 0:
        print(n)
        n -= 1
    print("Despegue")

def cuenta_regresiva_for(n:int) -> None:
    for i in range (n,0,-1):
        print(n)
        n -= 1
    print("Despegue")

#ejercicio 6.5


#ejercicio 6.6


#ejercicio 7


#ejercicio 8.1


#ejercicio 8.2


#ejercicio 8.3


#ejercicio 8.4


#ejercicio 8.5


#ejercicio 8.6


#ejercicio 9.1


#ejercicio 9.2


#ejercicio 9.3


#ejercicio 9.4

