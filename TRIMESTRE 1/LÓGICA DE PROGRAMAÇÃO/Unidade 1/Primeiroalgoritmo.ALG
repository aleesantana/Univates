Algoritmo "semnome"
// Disciplina   : [Lógica de Programação]
// Tutor: Jean Carlo Souza Krahl 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/02/2022
Var

   peso: inteiro
   altura: real
   imc: real
   cont: inteiro

Inicio
      cont<-1
      enquanto (cont<=3) faca
               escreva ("Digite seu peso: ")
               leia(peso)
               escreva ("Digite sua altura: ")
               leia(altura)
               imc <- peso/(altura^2)
               escreval("o imc é: ", imc)
               se(imc>30) então
                   escreval("Você está acima do peso")
               senao
                   escreval ("Você está saudável.")
               fimse
               cont<-cont+1
      fimenquanto

Fimalgoritmo