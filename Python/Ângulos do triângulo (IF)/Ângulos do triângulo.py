# Será solicitado ao usuário informar 3 angulos de um triangulo real/ficticio e o programa responderá qual tipo de triangulo ele é (com base em angulos).

# Dev: Gustavo Santos Silva
# Data: 21 / 06 / 2022
# Versiom: 1.1

novaPesquisa = "S"
while (novaPesquisa == 'S' or novaPesquisa == 's'):
    print("\nVamos descobrir que tipo de triângulo é esse")
    angulo1 = float(input("Digite a medida do primeiro ângulo: "))
    angulo2 = float(input("Digite a medida do segundo ângulo: "))
    angulo3 = float(input("Digite a medida do terceiro ângulo: "))


    if (angulo1 < 0 or angulo2 < 0 or angulo3 < 0):
        print("Por favor não digite valores menores que 0.")
    else:
        if ((angulo1 + angulo2 + angulo3) != 180):
            print("Este não é um triângulo!! A soma dos valores de todos os angulos deve ser igual a 180°")
        elif (angulo1 > 90 or angulo2 > 90 or angulo3 > 90):
            print("Ele é um Triângulo Obtusângulo: possui um ângulo obtuso. (maior que 90º)")
        elif (angulo1 == 90 or angulo2 == 90 or angulo3 == 90):
            print("Ele é um Triângulo Retângulo: possui um ângulo reto. (igual a 90º)")
        elif (angulo1 < 90 and angulo2 < 90 and angulo3 < 90): 
            print("Ele é um TriânguloAcutângulo: possui três ângulos agudos. (menor que 90º)")

    novaPesquisa = input("Deseja fazer uma nova pesquisa? [S/N] ")