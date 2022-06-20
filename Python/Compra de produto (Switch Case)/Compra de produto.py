# Dev: Gustavo Santos Silva
# Data: 20 / 06 / 2022
# Version: 1.0

novoProduto = "S"

while (novoProduto == "S"):

    codigoProduto = int(input("\nDigite o código do produto: "))
    quantidadeProduto = int(input("Digite a quantidade de produtos comprados: "))
    print("\n")
    if (codigoProduto >= 1 and codigoProduto <= 10):
        precoUnitario = 10
        total = precoUnitario * quantidadeProduto
        if (total <= 250):
            desconto = precoUnitario * quantidadeProduto * 0.05
            totalFinal = total - desconto
        else:
            desconto = 250 * 0.05
            totalFinal = total - desconto

    elif (codigoProduto >= 11 and codigoProduto <= 20):
        precoUnitario = 15
        total = precoUnitario * quantidadeProduto
        if (total > 250 and total <= 500):
            desconto = precoUnitario * quantidadeProduto * 0,1
            totalFinal = total - desconto
        else:
            if (total > 500):
                desconto = 500 * 0.05
                totalFinal = total - desconto
            else:
                desconto = 0
                totalFinal = total
            
    elif (codigoProduto >= 21 and codigoProduto <= 30):
        precoUnitario = 20
        total = precoUnitario * quantidadeProduto
        if (total > 50):
            desconto = precoUnitario * quantidadeProduto * 0.15
            totalFinal = total - desconto
        else:
            desconto = 0
            totalFinal = total
        
    elif (codigoProduto >= 31 and codigoProduto <= 40):
        precoUnitario = 30
        desconto = 0
        total = precoUnitario * quantidadeProduto
        totalFinal = total
    else:
        print("Foi digitado um código ou uma quantidade de produtos incorretos!! Verifique se o valor do código esta entre 1 a 40 e se a quantidade de produtos está maior que 0. Digite novamente.")
        continue

    print("Código do Produto: ", codigoProduto)
    print("Quantidade comprada: ", quantidadeProduto, "un")
    print("Preço unitário: RS %.2f" % precoUnitario)
    print("Desconto: R$ %.2f" % desconto)
    print("Valor: R$ %.2f" % total)
    print("Valor com desconto: R$ %.2f" % totalFinal)
    print(" ")
    novoProduto = input("Deseja verificar outra compra? [S/N]")
    if (novoProduto == "s" or novoProduto == "S"):
        novoProduto = "S"


