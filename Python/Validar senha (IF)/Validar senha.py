# O programa irá verificar se a senha inserida pelo usuário e receberá uma resposta de acordo com o que for digitado

# Dev: Gustavo Santos Silva
# Data: 17 / 06 / 2022
# Version: 1.0

# Entrada do usuário

import getpass

senha = getpass.getpass(prompt='Digite sua Senha: ', stream="*")
entrou = False
while (entrou == False):
    if (senha == "1234"):
        print("ACESSO PERMITIDO")
        entrou = True
    else:
        print("ACESSO NEGADO")
        senha = getpass.getpass(prompt='Digite sua Senha: ', stream="*")