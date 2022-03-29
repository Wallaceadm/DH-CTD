#encoding:UTF-8
import random

while True: 
    aleatorio = random.randrange(0, 5)
    escolhaPc = ""
    print("1)Pedra")
    print("2)Papel")
    print("3)Tesoura")
    print("4)Spock")
    print("5)Lagarto")
    print("6)Sair do Programa")

    opcao = int(input("O que você escolhe: "))
    
    if opcao == 1:
        escolhaUsuario = "pedra"
    elif opcao == 2:
        escolhaUsuario = "papel"
    elif opcao == 3:
        escolhaUsuario = "tesoura"
    elif opcao == 4:
        escolhaUsuario = "spock"
    elif opcao == 5:
        escolhaUsuario = "lagarto"
    elif opcao == 6:
        print ("Nos vemos!")
        break
    else:
        print ("Valor Invalido")
        continue
        
    print("Tua escolha: ", escolhaUsuario)   
    if aleatorio == 0:
        escolhaPc = "pedra"
    elif aleatorio == 1:
        escolhaPc = "papel"
    elif aleatorio == 2:
        escolhaPc = "tesoura"
    elif aleatorio == 3:
        escolhaPc = "spock"
    elif aleatorio == 4:
        escolhaPc = "largato"
    print("PC escolheu: ", escolhaPc)
    print("...")
    
    if escolhaPc == "pedra" and escolhaUsuario == "papel":
        print("Ganhou, papel cobre pedra")
    elif escolhaPc == "papel" and escolhaUsuario == "tesoura":
        print("Ganhou, tesoura corta papel")
    elif escolhaPc == "tesoura" and escolhaUsuario == "pedra":
        print("Ganhou, pedra amassa tesoura")
      
    #  ----------------------   
    elif escolhaPc == "spock" and escolhaUsuario == "tesoura":
        print("Ganhou, spock quebra tesoura")
    elif escolhaPc == "spock" and escolhaUsuario == "pedra":
        print("Ganhou, spock vaporiza pedra")
    elif escolhaPc == "largato" and escolhaUsuario == "spock":
        print("Perdeu, largato evenena spock")
    elif escolhaPc == "papel" and escolhaUsuario == "spock":
        print("Perdeu, papel refuta spock")
    elif escolhaPc == "largato" and escolhaUsuario == "papel":
        print("Ganhou, largato come papel") 
    elif escolhaPc == "tesoura" and escolhaUsuario == "largato":
        print("Perdeu, tesoura decapita largato")
    elif escolhaPc == "pedra" and escolhaUsuario == "largato":
        print("Perdeu, Pedra esmaga largato")
    #  ----------------------  


    if escolhaUsuario == "papel" and escolhaPc == "papel":
        print("Ganhou, papel cobre pedra")
    elif escolhaUsuario == "largato" and escolhaPc == "tesoura":
        print("Ganhou, tesoura corta papel")
    elif escolhaUsuario == "tesoura" and escolhaPc == "pedra":
        print("Ganhou, pedra amassa tesoura")
  #  ----------------------   

    elif escolhaUsuario == "spock" and escolhaPc == "tesoura":
        print("Ganhou, spock quebra tesoura")
    elif escolhaUsuario == "spock" and escolhaPc == "pedra":
        print("Ganhou, spock vaporiza pedra")
    elif escolhaUsuario == "largato" and escolhaPc == "spock":
        print("Perdeu, largato evenena spock")
    elif escolhaUsuario == "papel" and escolhaPc == "spock":
        print("Perdeu, papel refuta spock")
    elif escolhaUsuario == "largato" and escolhaPc == "papel":
        print("Ganhou, largato come papel") 
    elif escolhaUsuario == "tesoura" and escolhaPc == "largato":
        print("Perdeu, tesoura decapita largato")
    elif escolhaUsuario == "pedra" and escolhaPc == "largato":
        print("Ganhou, Pedra esmaga largato")

    #  ---------------------- 

    elif escolhaPc == escolhaUsuario:
        print("Empate")
    again = input("Jogar novamente? s/n: ")
    if 's' in again:
        continue
    elif 'n' in again:
        print("Nos vemos!")
        break
    else:
        print("Valor Invalido")

