#ejercicio 1
def stock_productos(stock_cambios: list[tuple[str, int]]) -> dict[str, tuple[int, int]]:
    res: dict[str, tuple[int, int]] = {}
    for i in stock_cambios:
        nombre = i[0]
        cantidad = i[1]
        if nombre not in res:
            res[nombre] = (cantidad,cantidad)
        else:
            minimo = res[nombre][0]
            maximo = res[nombre][1]
            if cantidad > maximo:
                res[nombre] = (minimo, cantidad)
            elif cantidad < res[i[0]][0]:
                res[nombre] = (cantidad, maximo)
    return res
"""
print(stock_productos([
    ("alimento", 10),
    ("juguete", 5),
    ("alimento", 12),
    ("alimento", 8),
    ("juguete", 2),
    ("medicamento", 7),
    ("medicamento", 7),
    ("juguete", 9),
]))
"""

#ejercicio 2
def lista_int_a_str(l: list[int]) -> list[str]:
    lista_str: list[str] = []
    for i in l:
        lista_str.append(str(i))
    return lista_str

def ultimos_tres_char(s: str) -> str:
    res: str = ""
    res += s[len(s)-3]
    res += s[len(s)-2]
    res += s[len(s)-1]
    return res

def es_primo(n: int) -> bool:
    cant_div: int = 0
    for i in range (1,n+1):
        if n%i==0:
            cant_div += 1
    return cant_div == 2

def filtrar_codigos_primos(codigos_barra: list[int]) -> list[int]:
    aux: list[str] = lista_int_a_str(codigos_barra)
    res: list[int] =[]
    for i in aux:
        if es_primo(int(ultimos_tres_char(i))):
            res.append(int(i))
    return res

#ejercicio 3
#CORREGIR!!!
def subsecuencia_mas_larga(tipos_pacientes_atendidos: list[str]) -> int:
    racha_actual: int = 0
    pos_racha_actual: int = -1
    tipo_racha: str = ""
    racha_maxima: int = 0
    pos_racha_maxima: int = 0
    for i in range(len(tipos_pacientes_atendidos)):
        if tipos_pacientes_atendidos[i] == "perro" or tipos_pacientes_atendidos[i] == "gato":
            if tipos_pacientes_atendidos[i] != tipo_racha:
                if racha_actual > racha_maxima:
                    racha_maxima = racha_actual
                    pos_racha_maxima = pos_racha_actual
                racha_actual = 1
                pos_racha_actual  = i
                tipo_racha = tipos_pacientes_atendidos[i]
            elif tipos_pacientes_atendidos[i] == tipo_racha:
                racha_actual += 1
        else:
            if racha_actual > racha_maxima:
                    racha_maxima = racha_actual
                    pos_racha_maxima = pos_racha_actual
            racha_actual = 0
            pos_racha_actual = -1
            tipo_racha = ""
    if racha_actual > racha_maxima:
                    racha_maxima = racha_actual
                    pos_racha_maxima = pos_racha_actual
    return pos_racha_maxima

#ejercicio 4
def un_responsable_por_turno(grilla_horaria: list[str]) -> list[tuple[bool,bool]]:
     return

#ejercicio 5
def promedio_de_salidas(registro: dict[str,list[int]]) -> dict[str,tuple[int,float]]:
    res: dict[str,tuple[int,float]] = {}
    for nombre in registro:
        validas: int = 0
        tiempo_validas: int = 0
        promedio: float = 0.0
        for p in registro[nombre]:
               if p > 0 and p < 61:
                    validas += 1
                    tiempo_validas += p
        if validas != 0:
            promedio = tiempo_validas/validas
        res[nombre] = (validas, promedio)
    return res

#ejercicio 6
def tiempo_mas_rapido(tiempos_salas: list[int]) -> int:
    tiempo_max: int = 0
    res: int = -1
    for i in range(len(tiempos_salas)):
        if tiempos_salas[i] > 0 and tiempos_salas[i] < 61:
            if res == -1:
                res = i
                tiempo_max = tiempos_salas[i]
            else:
                if tiempos_salas[i] < tiempo_max:
                    res = i
                    tiempo_max = tiempos_salas[i]
    return res
