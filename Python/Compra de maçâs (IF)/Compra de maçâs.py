# Programa uma quantidade de itens comprados e apartir de determinada quantidade seu valor se alltera.

# Dev: Gustavo Santos Silva
# Data: 17 / 06 / 2022
# Version: 1.0

numeroDeMacas = int(input("Quantas mçãs você deseja comprar?: "))       # Entrada do usuário

if (numeroDeMacas >= 12):      # Se comprar acima de 12 unidades, recebe-se um desconto de R$ 0,05
    valorCompra = numeroDeMacas*0.25
    print("\nParabéns voce teve um desconto!!")
    print("O valor a ser cobrado sera de R$ %.2f" % valorCompra, "reais.")
elif (numeroDeMacas < 12 and numeroDeMacas >= 0):
    valorCompra = numeroDeMacas*0.3
    print("\nO valor a ser cobrado sera de R$ %.2f" % valorCompra, "reais.")
else:
    print("Por favor digite um numero maior do que 0.")