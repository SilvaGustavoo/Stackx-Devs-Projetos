horasExtras = float(input("Digite o número de horas extras: "))
horasFaltas = float(input("Digite o número de horas faltantes: "))

H = horasExtras - ((horasFaltas)*2/3)

if (H > 2400) :
    print("O funcionário teve uma gratificação no valor de R$ 500,00 reais.")
else:
    if (H <= 2400 and H >= 1800) :
        print("O funcionário teve uma gratificação no valor de R$ 400,00 reais.")
    else: 
        if (H < 1800) and (H >= 1200): 
            print("O funcionário teve uma gratificação no valor de R$ 300,00 reais.")
        else:
            if (H < 1200) and (H >= 600):
                print("O funcionário teve uma gratificação no valor de R$ 200,00 reais.")
            else:
                print("O funcionário teve uma gratificação no valor de R$ 100,00 reais.")