import unittest

from simulacto_t1 import maximas_cantidades_consecutivos, maxima_cantidad_primos, tuplas_positivas_y_negativas, resolver_cuenta

'''
Ayudamemoria: entre los métodos para testear están los siguientes:

    self.assertEqual(a, b) -> testea que a y b tengan el mismo valor
    self.assertTrue(x)     -> testea que x sea True
    self.assertFalse(x)    -> testea que x sea False
    self.assertIn(a, b)    -> testea que a esté en b (siendo b una lista o tupla)
    
Para ejecutar coverage, ejecutar:
		coverage run --branch --include=ejercicios.py -m unittest test_suite.py

Importante: el nombre de cada caso de test debe comenzar con 'test' para que unittest lo considere como tal.

Para ver el reporte html, ejecutar:
        coverage html
        
'''

# Esqueleto para los test. Modificar según convenga

class Ej1Test(unittest.TestCase):
    def test_trivial(self):
        entrada = []
        salida = []
        self.assertEqual(entrada, salida)

class Ej2Test(unittest.TestCase):
    def test_trivial(self):
        entrada = []
        salida = []
        self.assertEqual(entrada, salida)

class Ej3Test(unittest.TestCase):
    def test_trivial(self):
        entrada = []
        salida = []
        self.assertEqual(entrada, salida)


class Ej4Test(unittest.TestCase):
    def test_trivial(self):
        entrada = []
        salida = []
        self.assertEqual(entrada, salida)

if __name__ == '__main__':
    unittest.main(verbosity=2)
