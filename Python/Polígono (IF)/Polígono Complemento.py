# Programa lera a quantidade de lados de um determinado polígno e sua medida, por fim mostrará ao usuário qual polígno é e o valor de sua área.

# Dev: Gustavo Santos Silva
# Data: 19 / 06 / 2022
# Version: 1.0

print("\n")
numeroLados = int(input("Digite quantos lados tem o polígono: "))
lado = float(input("Digite a medida do lado(cm): "))

while (lado <= 0):
    print("Não existe polígonos com medidas negativas ou igual a 0. Por favor tente novamente...")
    lado = float(input("Digite a medida do lado(cm): "))

if (numeroLados < 3):
    print("NÃO É UM POLÍGONO!!")
elif (numeroLados == 3):
    print("Ele é um TRIÂNGULO, sua área é 'A = ( lado ao quadrado * raiz quadrada de 3 ) / 4'.")
    area = ((lado**2)*(3**(1/2)))/4
    print("O valor da área é %.2f" % area, "cm²")
elif (numeroLados == 4):
    print("Ele é um QUADRADO, sua área é 'A = base * altura'.")
    area = lado * lado
    print("O valor da área é %.2f" % area, "cm²")
elif (numeroLados == 5):
    print("Ele é um PENTÁGONO, sua área é 'A = ((lado ao quadrado * raiz quadrada de 3) / 4) * 5'. ")
    area = ((lado**2) * (3**(1/2)) / 4) * 5
    print("O valor da área é %.2f" % area, "cm²")
else:
    print("POLÍGONO NÃO IDENTIFICADO!! tente um com lados variando entre 3 a 5")