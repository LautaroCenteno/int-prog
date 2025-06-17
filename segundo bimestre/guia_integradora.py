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