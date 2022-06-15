funcionario = 1
laco1 = False
laco2 = False
sair = False
salarioMinimo = 450

while (funcionario <= 10):
    nome = input("Digite o nome do funcionário: ")
    codigo = input("Digite o código do funcinário: ")
    horasTrabalhadas = float(input("Digite o número de horas trabalhadas: "))

    while (laco1 == False):
        turno = input("Digite o turno do funcionário (M – matutino; V – vespertino; N – noturno): ")
        if (turno == "M" or turno == "V" or turno == "N"):
            laco1 = True
        else:
            print("O turno digitado foi inválido!! Por favor digite M, V ou N.")

    while (laco2 == False):
        categoria = input("Digite a categoria do funcionário (O – operário; ou G – gerente): ")
        if (categoria == "O" or categoria == "G"):
            laco2 = True
        else:
            print("A categoria digitada foi inválida!! Por favor digite O ou G.")

    # Descobrir quanto é o valor da hora trabalhada do funcionário
        
    if (categoria == "G" and turno == "N"):
        valorHora = 0.18*salarioMinimo
    if (categoria == "G") and (turno == "M" or turno == "V"):
        valorHora = 0.15*salarioMinimo
    if (categoria == "O" and turno == "N"):
        valorHora = 0.13*salarioMinimo
    if (categoria == "O") and (turno == "M" or turno == "N"):
        valorHora = 0.1*salarioMinimo

    salarioInicial = horasTrabalhadas*valorHora

    # Calculo do Auxilio Alimentaçãp

    if (salarioInicial <= 300):
        auxilio = salarioInicial*0.2
    else:
        if(salarioInicial > 300 and salarioInicial <= 600):
            auxilio = salarioInicial*0.15
        else:
            if (salarioInicial > 600):
                auxilio = salarioInicial*0.05

    salarioFinal = salarioInicial + auxilio

    print("\n" * 7)

    # Informações do funcionário na tela

    print("Nome:", nome)
    print("Código:", codigo)
    print("Horas trabalhadas:", horasTrabalhadas, "horas.")
    print("Valor da hora trabalhada: RS", valorHora, "reais.")
    print("Salário inicial: R$", salarioInicial, "reais.")
    print("Auxílio alimentação: R$", auxilio, "reais.")
    print("Salário final: R$", salarioFinal, "reais.")

    laco1 = False
    laco2 = False
    
    # Opção do usuario continuar ou não

    funcionario = funcionario + 1
    while (sair == False):
        fim = input("Deseja continuar? [S/N} ")
        if (fim == "S" or fim == "s"):
            print("OK!!")
            print("\n" * 7)
            sair = True
        else:
            if (fim == "N" or fim == "n"):
                funcionario = 11
                sair = True
            else:
                print("Por favor digite S ou N.")
