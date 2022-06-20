# Reescrever um codigo de forma que ele seja mais "limpo"m

# Dev: Gustavo Santos Silva
# Data: 19 / 06 / 2022
# Version: 1.0

print("\n")
print("Vamos ao primeiro exemplo!!")
a = float(input("Digite um valor: "))
b = float(input("Digite um outro valor: "))

# Exemplo 1

if (a>b):
    print("O maior é", a)
else:
    print("O maior é", b)

# Exemplo 2

print("\nAgora vamos ao segundo exemplo!!")
x = float(input("Digite um número: "))

if (x>10):
    print("O valor é maior do que 10.")
elif (x<=10 and x>5):
    print("O valor é menor igual a 10 e maior do que 5.")
else:
    print("O valor é menor ou igual a 5.")