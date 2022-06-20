# Será desenvolcido um programa que fará a leitura de dois valores e irá mostrar ao usuário o maior dentre eles

# Dev: Gustavo Santos Silva
# Data: 17 / 06 / 2022
# Versão: 1.0
laco = True
while (laco == True):
    print("\n")
    primeiroNum = float(input("Digite um número: "))
    segundoNum = float(input("Digite um segundo número: "))


    if (primeiroNum > segundoNum):
        print("O número maior é o", primeiroNum)
    elif (primeiroNum < segundoNum):
        print("O número maior é o", segundoNum)
    elif (primeiroNum == segundoNum):
        print("Os números são iguais.")
    else:
        print("Foi digitado algo inválido. O programa não lê letras ou simbolos, e se caso não foi digitado nenhum dos dois, substitua a ',' pelo '.' e tente novamente.")

    x = input("Deseja tentar outro valor? [S/N] ")

    if (x == "s" or x == "S"):
        laco = True
    else:
        laco = False