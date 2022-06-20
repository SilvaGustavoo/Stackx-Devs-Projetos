# O programa lerá 3 medidas diferente de um determinado triângulo e depois mostrará qual tipo de triângulo é.

# Dev: Gustavo Santos Silva
# Data: 18 / 06 / 2022
# Version: 1.0

print("\nVamos descobrir que tipo de triângulo é esse")
lado1 = float(input("Digite a medida do primeiro lado: "))
lado2 = float(input("Digite a medida do segundo lado: "))
lado3 = float(input("Digite a medida do terceiro lado: "))

if (lado1 == lado2 and lado1 == lado3):
    print("Esse triângulo é o Equilátero, com todos os lados iguais.");
elif (lado1 == lado2 or lado1 == lado3 or lado2 == lado3):
    print("Esse triângulo é o Isósceles, com 2 lados iguais e 1 diferente.");
elif (lado1 != lado2 and lado1 != lado3):
    print("Esse triângulo é o Escaleno, com todos os lados diferentes.");