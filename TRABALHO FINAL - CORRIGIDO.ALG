Algoritmo "Trabalho final"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
//
//

// Descrição   : VENDAS DE INGRESSO DE UM CINEMA
// Autor(a)    : FERNANDO AGUIAR DA COSTA MORAIS
// Data atual  : 02/10/2022
// PROFESSOR   : ALISSON
// CURSO       : TÉCNICO EM INFORMÁTICA - NOTURNO
// INSTITUIÇÃO : SENAC - DF
// MATÉRIA     : LÓGICA DE PROGRAMAÇÃO

Var

   salas: vetor[1..8,1..10] de caracter
   f, p: inteiro   // CONTROLE
   f2, p2 : inteiro // VARIÁVEIS DE TROCA PARA CONTROLE
   opc, enter : inteiro  // VARIÁVEIS DE MENU E PARA VOLTAR TELA
   confC, confR, concR, confirmaR : inteiro
   // CONFIRMAR COMPRA, CONFIRMAR RESERVA, CANCELAR RESERVA, CONFIRMAR RESERVA
   quantR, quantV, quantD : real
   // QUANTIDADE DE RESERVAS, QUANTIDADE DE VENDAS, QUANTIDADE DISPONIVEIS

procedimento menu_principal
inicio
   Escreval("***************** MENU *******************")
   Escreval
   Escreval("1) - VERIFICAR AS POLTRONAS DA SALA:    ")
   Escreval("2) - EFETUAR A COMPRA DE UMA POLTRONA:  ")
   Escreval("3) - REALIZAR A RESERVA DE POLTRONA:    ")
   Escreval("4) - CANCELAR RESERVA:                  ")
   Escreval("5) - CONFIRMAÇÃO DE RESERVA:            ")
   Escreval("6) - RELATÓRIO:                         ")
   Escreval("7) - SAIR                               ")
   Escreval
   Escreval("******************************************")
fimprocedimento

procedimento tela_principal
inicio

   escreval
   Escreval("****************** TELA ***********************")
   Escreval
   Escreval("[R] => POLTRONAS RESERVADAS.           ")
   Escreval("[C] => POLTRONAS CONFIRMADAS.          ")             // MENU
   Escreval("[D] => POLTRONAS DISPONÍVEIS.          ")
   escreval
fimprocedimento

Inicio

   para f de 1 ate 8 faca
      para p de 1 ate 10 faca
         salas[f,p] := "[D]"
      fimpara
   fimpara
   repita
      menu_principal
      Escreval
      Escreva("ESCOLHA UMA OPÇÃO => ")
      leia(opc)
      limpatela

      escolha (opc)

      caso 1

         para f de 1 ate 8 faca
            para p de 1 ate 10 faca
               escreva (salas[f,p]:5)
            fimpara
            escreval
         fimpara
         repita
            tela_principal
            Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
            leia(enter)
            limpatela
         ate enter = 1

      caso 2

         para f de 1 ate 8 faca
            para p de 1 ate 10 faca
               escreva (salas[f,p]:5)
            fimpara
            escreval
         fimpara
         escreval
         Escreval("VOCÊ SÓ PODE COMPRAR POLTRONAS [D]")
         Escreval("A VENDA NÃO PODERÁ SER CANCELADA!")
         Escreval

         repita
            EScreval("INFORME A FILEIRA: [1/8] ")
            leia(f2)
            limpatela
            se (f2 < 1) ou (f2 > 8) entao
               escreval("FILEIRA ERRADA! POR FAVOR INFORME UM VALOR VÁLIDO:[1/8]")
            fimse
         ate (f2 > 0) e (f2 < 9)

         repita
            escreval("INFORME A POLTRONA: [1/10] ")
            leia(p2)
            limpatela
            se (p2 < 1) ou (p2 > 10) entao
               escreval("POLTRONA ERRADA! POR FAVOR INFORME UM VALOR VÁLIDO: [1/10]")
            fimse
         ate (p2 > 0) e (p2 < 11)

         repita

            se salas[f2,p2] = "[D]" entao

               Escreval("CONFIRMAR A COMPRA: 1) -SIM / 2) -NÃO")
               leia(confC)
               se confC = 1 entao
                  salas[f2,p2] := "[C]"
                  Escreval("COMPRA EFETUADA COM SUCESSO!")
                  escreval
                  Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
                  leia(enter)
                  limpatela
               fimse
               limpatela
               se confC = 2 entao
                  Escreval("COMPRA NÃO EFETUADA!")
                  escreval
                  Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
                  leia(enter)
                  limpatela
               fimse


            senao
               Escreval("POLTRONA JÁ FOI VENDIDA OU RESERVADA!")
               Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
               leia(enter)
               limpatela
            fimse

         ate enter = 1

      caso 3

         para f de 1 ate 8 faca
            para p de 1 ate 10 faca
               escreva (salas[f,p]:5)
            fimpara
            escreval
         fimpara
         escreval
         Escreval("SÓ PODE RESERVAR SE ESTIVER COM STATUS => [D]")
         Escreval("*********************************************")
         Escreval
         repita

            Escreval("INFORME A FILEIRA: [1/8] ")
            leia(f2)
            limpatela
            se (f2 < 1) ou (f2 > 8) entao
               escreval("FILEIRA ERRADA! POR FAVOR INFORME UM VALOR VÁLIDO:[1/8]")
            fimse

         ate (f2 > 0) e (f2 < 9)

         repita

            escreval("INFORME A POLTRONA: [1/10] ")
            leia(p2)
            limpatela
            se (p2 < 1) ou (p2 > 10) entao
               escreval("POLTRONA ERRADA! POR FAVOR INFORME UM VALOR VÁLIDO: [1/10]")

            fimse

         ate (p2 > 0) e (p2 < 11)

         repita

            se salas[f2,p2] = "[D]" entao

               Escreval("CONFIRMAR A RESERVA 1)-SIM / 2)-NÃO")
               leia(confR)
               se confR = 1 entao
                  salas[f2,p2] := "[R]"
                  Escreval("RESERVA EFETUADA COM SUCESSO!")
                  escreval
                  Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
                  leia(enter)
                  limpatela
               fimse

               limpatela

               se confR = 2 entao
                  Escreval("RESERVA NÃO EFETUADA!")
                  escreval
                  Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
                  leia(enter)
                  limpatela
               fimse

            senao
               escreval("POLTRONA JÁ VENDIDA OU RESERVADA, RESERVE OUTRA:")
               Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
               leia(enter)
               limpatela
            fimse



         ate enter = 1


      caso 4

         para f de 1 ate 8 faca
            para p de 1 ate 10 faca
               escreva (salas[f,p]:5)
            fimpara
            escreval
         fimpara
         escreval
         Escreval("CANCELAR SOMENTE MARCAÇÕES => [R]")
         Escreval

         repita

            Escreval("INFORME A FILEIRA: [1/8] ")
            leia(f2)
            limpatela
            se (f2 < 1) ou (f2 > 8) entao
               escreval("FILEIRA ERRADA! POR FAVOR INFORME UM VALOR VÁLIDO:[1/8]")
            fimse

         ate (f2 > 0) e (f2 < 9)

         repita

            escreval("INFORME A POLTRONA: [1/10] ")
            leia(p2)
            limpatela
            se (p2 < 1) ou (p2 > 10) entao
               escreval("POLTRONA ERRADA! POR FAVOR INFORME UM VALOR VÁLIDO: [1/10]")
            fimse

         ate (p2 > 0) e (p2 < 11)

         repita

            se salas[f2,p2] = "[R]" entao

               Escreval(" DESEJA CANCELAR A RESERVA 1)- SIM / 2)- NÃO")
               leia(concR)
               se concR = 1 entao
                  salas[f2,p2] := "[D]"
                  Escreval("RESERVA CANCELADA COM SUCESSO!")
                  escreval
                  Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
                  leia(enter)
                  limpatela
               fimse
               limpatela

               se concR = 2 entao
                  Escreval("RESERVA NÃO CANCELADA!")
                  escreval
                  Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
                  leia(enter)
                  limpatela
               fimse
            senao
               escreval("POLTRONA NÃO ESTÁ COM STATUS DE => [R]")
               Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
               leia(enter)
               limpatela
            fimse



         ate enter = 1

      caso 5

         para f de 1 ate 8 faca
            para p de 1 ate 10 faca
               escreva (salas[f,p]:5)
            fimpara
            escreval
         fimpara
         escreval
         Escreval("CONFIRMAR SOMENTE MARCAÇÕES => [R]")
         Escreval

         repita

            Escreval("INFORME A FILEIRA: [1/8] ")
            leia(f2)
            limpatela
            se (f2 < 1) ou (f2 > 8) entao
               escreval("FILEIRA ERRADA! POR FAVOR INFORME UM VALOR VÁLIDO:[1/8]")
            fimse

         ate (f2 > 0) e (f2 < 9)

         repita

            escreval("INFORME A POLTRONA: [1/10] ")
            leia(p2)
            limpatela
            se (p2 < 1) ou (p2 > 10) entao
               escreval("POLTRONA ERRADA! POR FAVOR INFORME UM VALOR VÁLIDO: [1/10]")
            fimse

         ate (p2 > 0) e (p2 < 11)

         repita

            se salas[f2,p2] = "[R]" entao

               Escreval(" DESEJA CONFIRMAR A RESERVA 1)-SIM / 2)-NÃO")
               leia(confirmaR)
               se confirmaR = 1 entao
                  salas[f2,p2] := "[C]"
                  Escreval("RESERVA CONFIRMADA COM SUCESSO!")
                  escreval
                  Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
                  leia(enter)
                  limpatela
               fimse
               limpatela

               se confirmaR = 2 entao
                  Escreval("RESERVA NÃO CONFIRMADA!")
                  escreval
                  Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
                  leia(enter)
                  limpatela
               fimse
            senao
               Escreval("CONFIRMAR SOMENTE MARCAÇÕES DO TIPO [R]")
               Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
               leia(enter)
               limpatela
            fimse



         ate enter = 1

      caso 6

         para f2 de 1 ate 8 faca
            para p2 de 1 ate 10 faca
               escreva (salas[f2,p2]:5)
               se salas[f2,p2] = "[C]" entao
                  quantV := quantV + 1
               fimse

               se salas[f2,p2] = "[D]" entao
                  quantD := quantD + 1
               fimse

               se salas[f2,p2] = "[R]" entao
                  quantR := quantR + 1
               fimse

            fimpara
            escreval
         fimpara
         


         repita
            escreval
            Escreval("************** - RELATÓRIO - ********************")
            Escreval
            Escreval ("A quantidade de vendas efetuadas: ", quantV)
            Escreval ("A quantidade de lugares disponíveis: ", quantD)
            Escreval ("A quantidade de lugares reservados: ", quantR)
            Escreval
            Escreval ("Valor das vendas: R$ ", quantV * 25)
            Escreval ("Valor das reservas: R$ ", quantR * 25)
            Escreval ("Percentual de vendas: ", quantV /80 * 100 )
            Escreval ("Percentual de reservas: ", quantR /80 * 100 )

            Escreval

              quantD := 0
              quantV := 0
              quantR := 0
              


            escreval
            Escreval("PRESSIONE => 1 PARA VOLTAR AO MENU PRINCIPAL: ")
            leia(enter)
            limpatela

         ate enter = 1

      caso 7

         ESCREVAL("OBRIGADO PELA A PREFERÊNCIA!")


      outrocaso
         EscrevaL("*********** OPÇÃO INVÁLIDA! ***************")




      fimescolha

   ate opc = 7



Fimalgoritmo