# Serão digitados 3 valores e o programa organizará eles de forma sequencial

# Dev: Gustavo Santos Silva
# Data: 17 / 06 / 2022
# Version: 1.0

print("Indique 3 numeros e será organizado do menor para o maior!!")
x = float(input("Digite o primeiro número: "))
y = float(input("Digite o segundo número: "))
z = float(input("Digite o terceiro número: "))

if (x < y and x < z and y < z):
    print("A sequência então ficou ", x, ", ", y, ", ", z, ".");
if (x < y and x < z and z < y):
    print("A sequência então ficou ", x, ", ", z, ", ", y, ".");
if (z < y and z < x and x < y ):
    print("A sequência então ficou ", z, ", ", x, ", ", y, ".");
if (z < y and z < x and y < x ):
    print("A sequência então ficou ", z, ", ", y, ", ", x, ".");
if (y < z and y < x and z < x ):
    print("A sequência então ficou ", y, ", ", z, ", ", x, ".");                                
if (y < z and y < x and x < z ):
    print("A sequência então ficou ", y, ", ", x, ", ", z, ".");