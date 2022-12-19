Algoritmo "IMC"
// Disciplina   : [Lógica de Programação]
// Professor   : Evandro Franzen 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/02/2022
Var
// Seção de Declarações das variáveis 
   peso: real
   altura: real
   imc: real
   cont: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   cont <- 1
   enquanto cont<=5 faça
      leia(peso)
      leia(altura)
      imc <- peso/altura^2
      escreval("Seu IMC:" imc)
      se imc>30 entao
         escreval("Seu peso:", peso, " sua altura:", altura)
         escreval("Você está acima do peso")
      fimse
      cont <- cont+1
   fimenquanto
Fimalgoritmo