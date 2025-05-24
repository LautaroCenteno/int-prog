from funciones_test import es_multiplo_de, devolver_el_doble_si_es_par, fahrenheit_a_celsius
import unittest

class test_es_multiplo(unittest.TestCase):
    def test_es_multiplo(self):
        self.assertTrue(es_multiplo_de(6,2))
    
    def test_es_multiplo_n_de_n(self):
        self.assertTrue(es_multiplo_de(6,2))
    
    def test_no_es_multiplo(self):
        self.assertFalse(es_multiplo_de(7,6))

class test_devolver_el_doble(unittest.TestCase):
    def test_devolver_el_doble_si_es_par(self):
        self.assertEqual(devolver_el_doble_si_es_par(1),1)

    def test_devolver_el_doble_si_es_par(self):
        self.assertEqual(devolver_el_doble_si_es_par(8),16)

class test_fahrenheit_a_celsius(unittest.TestCase):
    def test_fahrenheit_a_celsius(self):
        obtenido: float = fahrenheit_a_celsius(0)
        self.assertAlmostEqual(obtenido, -17.7792, 2)
        

if __name__ == '__main__':
    unittest.main(verbosity=2)