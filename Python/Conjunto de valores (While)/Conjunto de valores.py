# Será feito a leitura de uma quantidade indeterminada de numeros digitados pelo usuário e em cada um deles sera exresso seus valorees em raiz quadrada, cubo e seu quadrado.
# Dev: Gustavo Santos Silva
# Data: 15 / 06 / 2022

import math

print("\n")
print("Este programa lerá todo e qualquer valor númerico digitado, e a cada um deles será mostrado seus valores ao quadrado, cubo e sua raiz quadrada")
print("Para sair do programa basta digitar 0 ou um valor negativo.")

laco1 = True

while (laco1 == True):
    numDigitado = float(input("Digite um número: "))
    if (numDigitado > 0):
        quadrado = numDigitado*numDigitado
        raizQuadrada = numDigitado**(1/2)
        cubo = numDigitado*numDigitado*numDigitado
        print("Raíz quadrada: %.3f" % raizQuadrada)
        print("Elevado ao Quadrado: %.2f" % quadrado)
        print("Elevado ao Cubo: %.2f" % cubo)
        print("\n")
    else:
        laco1 = False
    