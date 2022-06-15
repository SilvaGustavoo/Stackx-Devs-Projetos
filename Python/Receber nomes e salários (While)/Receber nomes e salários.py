# Será feita a comparação do desenvolvimento de dois salarios investidos integralmente sendo um 3x maior que o outro. O maior com rendimento de 2% e o menos com rendimento de 5% ambos mensais, calculo de quanto tempo demoraría para se equalizarem.

# Dev: Gustavo Santos Silva
# Data: 15 / 06 / 2022
# Versão: 1.0

salarioCarlos = float(input("Por favor digite o salário de Carlos: "))
salarioJoao = salarioCarlos*(1/3)
mes = 0

while (salarioJoao < salarioCarlos):
    salarioCarlos = salarioCarlos*1.02
    salarioJoao = salarioJoao*1.05
    mes = mes + 1

print("Carlos terá um acumulo de R$ %.2f" % salarioCarlos, "reais. Enquanto o João com R$ %.2f" % salarioJoao, "reais. Todos eles em um prazo de", mes, "meses.")