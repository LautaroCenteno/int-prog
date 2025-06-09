import math

#ejercicio 1.1
def imprimir_hola_mundo() -> None:
    print("¡Hola mundo!")

#ejercicio 1.2
def imprimir_un_verso() -> None:
    print("Verso1...\n" "Verso2... \n" "Verso3...")

#ejercicio 1.3
def raizDe2() -> float:
    raizde2: float = math.sqrt(2)
    return round(raizde2, 2)

#ejercicio 1.4
def factorial_de_2() -> int:
    return math.factorial(3)

#ejercicio 1.5
def perimetro() -> float:
    p:int = 2 * math.pi
    return p

#ejercicio 2.1
def imprimir_saludo(nombre: str) -> str:
    return "Hola " + nombre

#ejercicio 2.2
def raiz_cuadrada_de(numero: float) -> float:
    return round(math.sqrt(numero), 2)

#ejercicio 2.3
def fahrenheit_a_celsius(temp_far:float) -> float:
    return (temp_far - 32) * 5/9

#ejercicio 2.4
def imprimir_dos_veces(estribillo: str):
    print((estribillo + "\n") * 2)

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
def cantidad_de_pizzas(comensales: int, min_cant_de_porciones: int) -> int:
    porciones_necesarias: int = comensales * min_cant_de_porciones
    cant_pizzas: int = 0
    cant_porciones: int = 0
    while porciones_necesarias > cant_porciones:
        cant_pizzas += 1
        cant_porciones += 8
    return cant_pizzas

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
def peso_pino(altura_metros: int) -> int:
    altura_centimetros: int = altura_metros * 100
    peso_kg: int = 0
    if altura_metros > 3:
        peso_kg += 300 * 3
        altura_metros -= 3
        peso_kg += altura_metros * 100 *2
        return peso_kg
    return altura_centimetros * 3

#ejercicio 4.2
def es_peso_util(peso_kg: int) -> bool:
    if 400 <= peso_kg <= 1000:
        return True
    return False

#ejercicio 4.3
#hacer sin composicion de funciones
def sirve_pino(altura_m: int) -> bool:
    return es_peso_util(peso_pino(altura_m))

#ejercicio 4.4
def sirve_pino(altura_m: int) -> bool:
    return es_peso_util(peso_pino(altura_m))

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
def eco_10_veces() -> None:
    veces = 0
    while veces < 10:
        print("eco")
        veces += 1

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
def viaje_tiempo(ano_partida: int, ano_llegada: int) -> None:
    ano_actual: int = ano_partida
    while ano_actual > ano_llegada:
        ano_actual -= 1
        print("Viajó un año al pasado, estamos en el año: " + str(ano_actual))

#ejercicio 6.6

'''
def viaje_tiempo(ano_partida: int) -> None:
    ano_actual: int = ano_partida
    while ano_actual > (-364):
        ano_actual -= 20
        print("Viajó 20 años al pasado, estamos en el año: " + str(ano_actual))
    ano_actual -= 20
    print("Viajó 20 años al pasado, estamos en el año: " + str(ano_actual))
    if (abs(ano_actual - 20) - 384) < (384 - abs(ano_actual)):
        ano_actual -= 20
        print("Viajó 20 años al pasado, estamos en el año: " + str(ano_actual))

viaje_tiempo(-200)
'''

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

