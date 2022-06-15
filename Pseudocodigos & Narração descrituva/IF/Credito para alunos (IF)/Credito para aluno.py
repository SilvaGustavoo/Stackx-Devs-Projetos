# Linha de crédito fornecida pela Stackx com base nos rendimentos do solicitante
# Dev: Gustavo Santos Silva
# Data: 15 / 06 / 2022
# Version: 0.2


novaPesquisa = True             # Para caso o usuário desejar fazer uma nova pesquisa
while (novaPesquisa == True):
    print("\n")
    print("A StackX abriu uma linha de crédito para os alunos!!. Descubra agora se você consegue aproveitar essa oportunidade.")
    print("Para isso vou precisar de algumas informações...")
    print("\n")

    #Entradas de informções do usuário

    idade = int(input("Digite sua idade: "))
    salarioBruto = float(input("Digite seu salário bruto: "))
    emprestimo = float(input("Qual o valor do empréstimo: "))
    


    #Caso o solicitante for menor de idade

    if (idade < 18):
        print("Para ser efetuado o empréstimo, o solicitante deve ser maior de idade. Converse com seu responsável para que não perca esta chance!!")
    else:

        # Um dos requisitos era de o valor da parcela ser 30% ou menos do rendimento mensal do solicitante

        prestacaoMensal = (0.3*salarioBruto)            # Valor maximo da parcela que o solicitante pode pagar
        prestacao = emprestimo/prestacaoMensal          # Números de parcelas, em relação ao valor do emprestimo pelo valor da parcela paga pelo usuario
        emprestimoMaximo = 48*prestacaoMensal           # Valor maximo possível do empréstimo que está liberado para ele.

        # Dar a opção do usuario escolher o número de parcelas, se atender os requisitos abaixo, sendo que se o valor das prestações passar de 48x ele não esta apto a receber o valor de emprestimo solicitado.

        print("\n"*2)

        if (prestacao > 48):
            print("O emprestimo solicitado não atende as requisições. O valor do empréstimo disponivel para o(a) senhor(a) é de R$ %.2f" % emprestimoMaximo, "reais.")

        elif (prestacao <= 48 and prestacao > 36):
            print("Parabens o numero de prestações é somente 48x. Solicite agora!!")
            prestacaoMensal = emprestimo/48
            print("Sua prestação ficará 48 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")

        elif (prestacao <= 36 and prestacao > 24):
            print("Parabens o numero de prestações é de 36x ou 48x. Solicite agora!!")
            numeroDeParcelas = int(input("Escolha o número de parcelas desejado: "))        # Usuário escolhe o numero de vezes que deseja parcelar dentre os valores descritos
            
            if (numeroDeParcelas == 48):
                prestacaoMensal = emprestimo/48
                print("Sua prestação ficará 48 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")
            elif (numeroDeParcelas == 36):
                prestacaoMensal = emprestimo/36
                print("Sua prestação ficará 36 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")
            else:
                print("Por favor digite apenas o número de parcelas desejado. Elas sao 36 ou 48.")

        elif (prestacao <= 24 and prestacao > 12):
            print("Parabens o numero de prestações é de 24x, 36x ou 48x. Solicite agora!!")
            numeroDeParcelas = int(input("Escolha o número de parcelas desejado: "))        # Usuário escolhe o numero de vezes que deseja parcelar dentre os valores descritos

            if (numeroDeParcelas == 48):
                prestacaoMensal = emprestimo/48
                print("Sua prestação ficará 48 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")
            elif (numeroDeParcelas == 36):
                prestacaoMensal = emprestimo/36
                print("Sua prestação ficará 36 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")
            elif (numeroDeParcelas == 24):
                prestacaoMensal = emprestimo/24
                print("Sua prestação ficará 24 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")
            else:
                print("Por favor digite apenas o número de parcelas desejado. Elas sao 24, 36 ou 48.")
        
        elif (prestacao <= 12 and prestacao > 6):
            print("Parabens o numero de prestações é de 12x, 24x, 36x ou 48x. Solicite agora!!")
            numeroDeParcelas = int(input("Escolha o número de parcelas desejado: "))        # Usuário escolhe o numero de vezes que deseja parcelar dentre os valores descritos

            if (numeroDeParcelas == 48):
                prestacaoMensal = emprestimo/48
                print("Sua prestação ficará 48 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")
            elif (numeroDeParcelas == 36):
                prestacaoMensal = emprestimo/36
                print("Sua prestação ficará 36 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")
            elif (numeroDeParcelas == 24):
                prestacaoMensal = emprestimo/24
                print("Sua prestação ficará 24 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")
            elif (numeroDeParcelas == 12):
                prestacaoMensal = emprestimo/12
                print("Sua prestação ficará 12 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")  
            else:
                print("Por favor digite apenas o número de parcelas desejado. Elas sao 12, 24, 36 ou 48.")

        elif (prestacao < 6 and prestacao > 0):
            print("Parabens o numero de prestações é de 6x, 12x, 24x, 36x ou 48x. Solicite agora!!")
            numeroDeParcelas = int(input("Escolha o número de parcelas desejado: "))        # Usuário escolhe o numero de vezes que deseja parcelar dentre os valores descritos

            if (numeroDeParcelas == 48):
                prestacaoMensal = emprestimo/48
                print("Sua prestação ficará 48 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")
            elif (numeroDeParcelas == 36):
                prestacaoMensal = emprestimo/36
                print("Sua prestação ficará 36 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")
            elif (numeroDeParcelas == 24):
                prestacaoMensal = emprestimo/24
                print("Sua prestação ficará 24 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")
            elif (numeroDeParcelas == 12):
                prestacaoMensal = emprestimo/12
                print("Sua prestação ficará 12 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")  
            elif (numeroDeParcelas == 6):
                prestacaoMensal = emprestimo/6
                print("Sua prestação ficará 6 vezes de R$ %.2f" % prestacaoMensal, "reais. Se estiver de acordo entre em contato conosco!!")  
            else:
                print("Por favor digite apenas o número de parcelas desejado. Elas sao 6, 12, 24, 36 ou 48.")

        else:
            print("Por favor digite um valor realista.")

    novaPesquisa = input("Deseja fazer uma nova pesquisa? [S/N] ")
    if (novaPesquisa == "S" or novaPesquisa == "s"):
        novaPesquisa = True
    else:
        novaPesquisa = False