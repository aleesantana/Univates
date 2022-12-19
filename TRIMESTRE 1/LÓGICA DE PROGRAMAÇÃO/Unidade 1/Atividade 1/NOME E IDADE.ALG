Algoritmo "NOME E IDADE"
// Disciplina   : [Lógica de Programação]
// Tutor: Jean Carlo Souza Krahl 
// Descrição   : Lê o nome e a idade de 4 pessoas e lista-os.
// Autor(a)    : Alessandra Elisa Santana - 583526
// Data atual  : 23/02/2022
Var
   nome1, nome2, nome3, nome4: caractere
   idade1, idade2, idade3, idade4: inteiro
   nomes: inteiro
   idades: inteiro
Inicio
      nomes <- 1
      idades <- 1
      //atribuição de valor as variáveis
      enquanto nomes<=4 faca
      enquanto idades<=4 faca
         escreval("Digite o primeiro nome: ")
         leia(nome1)
         nomes <- nomes+1
         escreval("Digite a idade de ", nome1)
         leia(idade1)
         idades <- idades+1
         escreval("Digite o segundo nome: ")
         leia(nome2)
         nomes <- nomes+1
         escreval("Digite a idade de ", nome2)
         leia(idade2)
         idades <- idades+1
         escreval("Digite o terceiro nome: ")
         leia(nome3)
         nomes <- nomes+1
         escreval("Digite a idade de ", nome3)
         leia(idade3)
         idades <- idades+1
         escreval("Digite o quarto nome: ")
         leia(nome4)
         nomes <- nomes+1
         escreval("Digite a idade de ", nome4)
         leia(idade4)
         idades <- idades+1
      fimenquanto
      fimenquanto
      //Apresentação do resultado!
         escreval(nome1, " tem", idade1, " anos!")
         escreval(nome2, " tem", idade2, " anos!")
         escreval(nome3, " tem", idade3, " anos!")
         escreval(nome4, " tem", idade4, " anos!")
Fimalgoritmo