Algoritmo "Nomes Invertidos"
// Disciplina   : [L?gica de Programa??o]
// Tutor: Jean Carlo Souza Krahl 
// Descri??o   : Ler 4 nomes e apresent?-los em ordem invertida
// Autor(a)    : Alessandra Elisa Santana - 583526
// Data atual  : 23/02/2022
Var
   nome1, nome2, nome3, nome4: caractere
   cont: inteiro
Inicio
      cont <- 1
      //atribui??o de valor as vari?veis
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
      //Apresenta??o dos nomes em ordem invertida
         escreval("1? nome:", nome4)
         escreval("2? nome:", nome3)
         escreval("3? nome:", nome2)
         escreval("4? nome:", nome1)
Fimalgoritmo