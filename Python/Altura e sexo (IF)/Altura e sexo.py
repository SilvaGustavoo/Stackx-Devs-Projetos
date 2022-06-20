# Calculo de peso ideal de acordo com o sexo

# Dev: Gustavo Santos Silva
# Data: 17 / 06 / 2022
# Version: 1.0

print("\nPronto para saber seu peso ideal? informe os dados a seguir e desecubra seu Peso Ideal agora!!. ")
print("Antes de comceçarmos me informe seu sexo \n 1: Feminino. \n 2: Masculino",)
sexo = input("Digite o número equivalente ao seu sexo: ")

laco = False
while (laco == False):              # Caso o usuário digite um valor diferente de 1 ou 2
    if (sexo != "1" and sexo != "2"):
        print("Sexo incorreto. Por favor digite 1 para Feminino ou 2 para Masculino.")
        sexo = input("Digite o número equivalente ao seu sexo: ")
    else:
        laco = True
    

altura = float(input("Digite sua altura: "))

if (sexo == "1"):
    pesoIdeal = (62.1 * altura) - 44.7
    print("Seu peso ideai é de %.2f" % pesoIdeal, "Kg.")
elif (sexo == "2"):
    pesoIdeal = (72.7 * altura) - 58
    print("Seu peso ideai é de %.2f" % pesoIdeal, "Kg.")
else:
    print("Algo foi digitado incorretamente. Substitua as virgulas por pontos.")
