peso = float(input("Digite seu peso: "))
idade = int(input("Digite sua idade: "))

if (idade < 20 ):
    if (peso <= 60):
        print("Seu grupo de risco é 9.")
    else:
        if (peso > 60 and peso <= 90):
            print("Seu grupo de risco é 8.")
        else:
            if (peso > 90): 
                print("Seu grupo de risco é 7.")
else:
    
    if (idade >= 20 and idade <= 50):
        if (peso <= 60):
            print("Seu grupo de risco é 6.")
        else:
            if (peso > 60 and peso <= 90):
                print("Seu grupo de risco é 5.")
            else:
                if (peso > 90): 
                    print("Seu grupo de risco é 4.")
    else:

        if (idade > 50):
            if (peso <= 60):
                print("Seu grupo de risco é 3.")
            else:
                if (peso > 60 and peso <= 90):
                    print("Seu grupo de risco é 2.")
                else:
                    if (peso > 90): 
                        print("Seu grupo de risco é 1.")
        