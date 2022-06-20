# Programa tem a função de ler o valor da idade do usuário com base no seu ano de nascimento de dizer se ele tem ou não a obrigatoriedade de votar

# Dev: Gustavo Santos Silva
# Data: 17 / 06 / 2022
# Version: 1.0

ano = int(input("Digite o ano em que você nasceu: "))
idade = 2022 - ano

anosFaltantes = 16 - idade

if (idade < 0 or idade > 130):
    print("Idade inválida verifique as informações e tente novamente.")
else:
    if (idade < 16):
        print("você é muito novo(a) para votar ainda, aguarde mais", anosFaltantes, "anos e você poderá fazer parte da escolha mais importante do país!!.")
    elif (idade >= 16 and idade < 18) or (idade >= 65):
        print("Você pode votar, mas o ato de votar é uma escolha e não uma obrigação.")
    else:
        print("Você não so pode, mas como deve votar este ano!!")