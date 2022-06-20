# O usuário vai digitar 3 valores é o programa mostrará a ele qual entre eles é o maior.

# Dev: Gustavo Santos Silva
# Data: 18 / 06 / 2022
# Version: 1.0

x = float(input("Digite o primeiro número: "))
y = float(input("Digite o segundo número: "))
z = float(input("Digite o terceiro número: "))

if (x > y and x > z):
    print("O maior número é o", x);
elif (y > x and y > z):
    print("O maior número é o", y);
elif (z > y and z > x):
    print("O maior número é o", z);
else:
    print("Humm digitou um número igual né... Não existe um maior entre eles");