idade = int(input("Qual a sua idade: "))

if (idade < 5):
    print("Você é muito novo para participar da competição, a idade minima é de 5 anos.")
if (idade >= 5 and idade < 8):
    print("Sua categoria é Infantil. Boa sorte!!")
if (idade >= 8 and idade < 11):
    print("Sua categoria é Juvenil. Boa sorte!!")
if (idade >= 11 and idade < 16):
    print("Sua categoria é Adolescente. Boa sorte!!")
if (idade >= 16 and idade <= 30):
    print("Sua categoria é Adulto. Boa sorte!!")
if (idade > 30 and idade <= 100):
    print("Sua categoria é Sênior. Boa sorte!!")
if (idade > 100):
        print("Foi digitado uma idade incorreta, verifique e tente novamente.")