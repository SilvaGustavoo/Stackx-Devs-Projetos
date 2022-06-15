salarioBruto = float(input("Digite seu salário bruto: "))
IMPOSTO = 0.07

salarioRecebido = salarioBruto * (1-IMPOSTO)

if (salarioBruto < 0):
    print("Salário negativo!! por favor digite corretamente.")
if (salarioBruto <= 350):
    salarioRecebido = salarioRecebido + 100
    print("Parabéns você recebeu R$ 100,00 de gratificação \nSeu salário a receber é de R$", salarioRecebido, "reais.")
if (salarioBruto > 350 and salarioBruto <= 600):
    salarioRecebido = salarioRecebido + 75
    print("Parabéns você recebeu R$ 75,00 de gratificação \nSeu salário a receber é de R$", salarioRecebido, "reais.")
if (salarioBruto > 600 and salarioBruto <= 900):
    salarioRecebido = salarioRecebido + 50
    print("Parabéns você recebeu R$ 50,00 de gratificação \nSeu salário a receber é de R$", salarioRecebido, "reais.")
if (salarioBruto > 900):
    salarioRecebido = salarioRecebido + 35
    print("Parabéns você recebeu R$ 35,00 de gratificação \nSeu salário a receber é de R$", salarioRecebido, "reais.")