# Programa lerá algumas informações de um determinado produto. O mesmo aplicará descontos de imposto e aumento de valores de acordo com alguns criterios, e por fim determinará se seu valor é viavel

# Dev: Gustavo Santos Silva
# Data: 20 / 06 / 2022
# Version: 1.0


novaPesquisa = "S"

while (novaPesquisa == "S"):                # Caso o usuário queira fazer uma nova pesquisa

    # ENTRADA DE USUÁRIO

    nomeProduto = input("\nDigitte o nome do produto: ")
    preco = float(input("Digite o preço do produto: "))
    print("\nQual categoria é o produto (1 – limpeza; 2 – alimentação; ou 3 – vestuário).")
    categoria = input("Digite apenas o número: ")

    # VERIFICAÇÃO DOS DADOS INSERIDOS 

    while (preco <= 0):     # Se o usuário digitar um preço negativo
        print("O valor do preço não pode ser negativo, por favor digite novamente!!")
        preco = float(input("Digite o preço do produto: "))


    while (categoria != "1" and categoria != "2" and categoria != "3"):
        print("categoria inválida, porfavor digite somente os números indicados abaixo. Tente novamente... ")
        print("\nQual categoria é o produto (1 – limpeza; 2 – alimentação; ou 3 – vestuário).")
        categoria = input("Digite apenas o número: ")

    categoria = int(categoria)

    # Caso o produto for um alimento, perguntar se o mesmo precisa ou não de refrigeração.

    if (categoria == 2):
        print("\nQual a situação do produto? (R – produtos que necessitam de refrigeração; e N – produtos que não necessitam de refrigeração)")
        situacao = input("Digite somente a letra em maiúsculo que representa a situação: ")

        while (situacao != "R" and situacao != "r" and situacao != "N" and situacao != "n"):
            print("Situação foi inválida por favor digite R ou N apenas. Digite novamente...")
            print("\nQual a situação do produto? (R – produtos que necessitam de refrigeração; e N – produtos que não necessitam de refrigeração) ")
            situacao = input("Digite somente a letra em maiúsculo que representa a situação: ")

    print("\n"*14)

    # Diferenciação de imposto de acordo com o valor do produto

    if (preco <= 25 and preco > 0): # Caso o produto tiver um preço menor que 25 reais.

        if (categoria == 1):        # LIMPEZA
            print("O produto teve um percentual de aumento de 5% menos um imposto de 8%")
            novoPreco = (preco * 1.05) - (preco * 1.05)*0.08
            print("O preço ajustado é de R$ %.2f" % novoPreco)

        elif (categoria == 2):      # ALIMENTO
            if (situacao == "R"):           
                print("O produto teve um percentual de aumento de 8% menos um imposto de 5%")
                novoPreco = (preco * 1.05) - (preco * 1.05) * 0.08
                print("O preço ajustado é de R$ %.2f" % novoPreco)
            else:
                print("O produto teve um percentual de aumento de 8% menos um imposto de 8%")
                novoPreco = (preco * 1.08) - (preco * 1.08) * 0.08
                print("O preço ajustado é de R$ %.2f" % novoPreco)

        elif (categoria == 3):      # VESTUÁRIO
            print("O produto teve um percentual de aumento de 10% menos um imposto de 8%")
            novoPreco = (preco * 1.1) - (preco * 1.1) * 0.08
            print("O preço ajustado é de R$ %.2f" % novoPreco)

    else:   # Caso o produto tiver um valor acima de 25 reais.

        if (categoria == 1):        
            print("O produto teve um percentual de aumento de 12% menos um imposto de 8%")
            novoPreco = (preco * 1.12) - (preco * 1.12) * 0.08
            print("O preço ajustado é de R$ %.2f" % novoPreco)

        elif (categoria == 2):
            if (situacao == "R"):
                print("O produto teve um percentual de aumento de 15% menos um imposto de 5%")
                novoPreco = (preco * 1.15) - (preco * 1.15) * 0.05
                print("O preço ajustado é de R$ %.2f" % novoPreco)
            else:
                print("O produto teve um percentual de aumento de 18% menos um imposto de 8%")
                novoPreco = (preco * 1.15) - (preco * 1.15)*0.08
                print("O preço ajustado é de R$ %.2f" % novoPreco)

        elif (categoria == 3):
            print("O produto teve um percentual de aumento de 10% e menos um imposto de 8%")
            novoPreco = (preco * 1.18) - (preco * 1.18)* 0.08
            print("O preço ajustado é de R$ %.2f" % novoPreco)

    # RESULTADO FINAL PARA O USUÁRIO

    print("\n")
    print("Produto: ", nomeProduto)
    print("Preço: R$ %.2f" % preco)
    print("Categoria: ", categoria)
    print("Peço com ajuste: R$ %.2f" % novoPreco)

    if (novoPreco <= 50):
        print("Barato!!")
    elif (novoPreco > 50 and novoPreco < 120):
        print("Normal.")
    else:
        print("Caro!!")

    print("\n")

    # CASO USUÁRIO DESEJAR FAZER UMA NOVA PESQUISA

    novaPesquisa = input("Deseja fazer outra pesquisa? {S/N}: ")
    if (novaPesquisa == "S" or novaPesquisa == "s"):
        novaPesquisa = "S"
    else:
        novaPesquisa = "N"

