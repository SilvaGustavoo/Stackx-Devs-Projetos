
# Um funcionário de uma empresa recebe, anualmente, aumento salarial. Sabe-se que:

#   a) esse funcionário foi contratado em 2000, com salário inicial de R$1.000,00;
#   b) Em 2001, ele recebeu aumento de 1,5%, sobre o seu salário inicial;
#   c) A partir de 2002 (inclusive), os aumentos salariais sempre corresponderam ao dobro do percentual do ano anterior.

# Faça um programa que determine o salário desse funcionário dos anos de 2000 à 2017. Apresente todos os valores.

# Dev: Gustavo Santos Silva
# Data: 20 / 06 / 2022
# Version: 1.0

ano = 2000
porcentagem = 0.015
salarioInicial = 1000.00

print("No ano de", ano, "o salario foi de R$ %.2f" % salarioInicial)

i = 0

for i in range(1, 18):          # Inicio da função de repetição
    
    ano = ano + 1               # Contador de ano, sempre que der 1 loop aumentará o ano em 1
    if (i == 1):                # Quando for em 1 (2001) teve um aumento diferente dos anos seguintes (de 1.5% para 3.0%)
        porcentagem = 0.015
    else:
        porcentagem = 0.03
    
    salarioFinal = salarioInicial*(porcentagem + 1)                             # Salario com acréscimo da porcentagem
    salarioInicial = salarioFinal                                               # Para iniciar o loop com o valor acrescido do ano anterior
    print("No ano de", ano, "o salario foi de R$ %.2f" % salarioFinal)        # Mostra ao usuário o salário com o aumento


porcentagemAcomulada = (salarioInicial/10)-100                                  # Acumulo de porcentagem de todos os anos (Obs: foi usado a formula de 3 para chegar nesse formato)
print("A porcentagem acomulada foi de %.2f" % porcentagemAcomulada, "%")        # Mostra ao usuário o acumulo final da porcentagem





