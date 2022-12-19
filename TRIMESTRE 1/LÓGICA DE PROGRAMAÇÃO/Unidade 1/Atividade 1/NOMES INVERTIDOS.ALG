Algoritmo "Nomes Invertidos"
// Disciplina   : [Lógica de Programação]
// Tutor: Jean Carlo Souza Krahl 
// Descrição   : Ler 4 nomes e apresentá-los em ordem invertida
// Autor(a)    : Alessandra Elisa Santana - 583526
// Data atual  : 23/02/2022
Var
   nome1, nome2, nome3, nome4: caractere
   cont: inteiro
Inicio
      cont <- 1
      //atribuição de valor as variáveis
      enquanto cont<=4 faca
         escreval("Digite o primeiro nome: ")
         leia(nome1)
         cont <- cont+1
         escreval("Digite o segundo nome: ")
         leia(nome2)
         cont <- cont+1
         escreval("Digite o terceiro nome: ")
         leia(nome3)
         cont <- cont+1
         escreval("Digite o quarto nome: ")
         leia(nome4)
      cont <- cont+1
      fimenquanto
      //Apresentação dos nomes em ordem invertida
         escreval("1ª nome:", nome4)
         escreval("2ª nome:", nome3)
         escreval("3ª nome:", nome2)
         escreval("4ª nome:", nome1)
Fimalgoritmo