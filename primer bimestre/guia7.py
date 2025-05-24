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
