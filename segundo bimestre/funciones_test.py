def es_multiplo_de(n:int, m:int) -> bool:
    return n%m == 0

def devolver_el_doble_si_es_par(n:int) -> int:
    if n%2==0:
        return n*2
    return n

def es_primo (n: int) -> bool:
    unidad: int = 2
    if abs(n) == 1 or n <= 0:
        return False
    while unidad < abs(n):
        if n%unidad == 0:
            return False
        unidad += 1
    return True
    
def cuantos_primos_en_rango(m:int, n:int) -> int:
    cant_primos:int = 0
    if m > n:
        for i in range (m, n-1, -1):
            if es_primo(i) == True:
                cant_primos += 1
            else:
                cant_primos = cant_primos
    else:
        for i in range (m, n+1,):
            if es_primo(i) == True:
                cant_primos += 1
            else:
                cant_primos = cant_primos
    return cant_primos

