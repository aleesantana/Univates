Algoritmo "IMC"
// Disciplina   : [L?gica de Programa??o]
// Professor   : Evandro Franzen 
// Descri??o   : Aqui voc? descreve o que o programa faz! (fun??o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/02/2022
Var
// Se??o de Declara??es das vari?veis 
   peso: real
   altura: real
   imc: real
   cont: inteiro

Inicio
// Se??o de Comandos, procedimento, fun??es, operadores, etc... 
   cont <- 1
   enquanto cont<=5 fa?a
      leia(peso)
      leia(altura)
      imc <- peso/altura^2
      escreval("Seu IMC:" imc)
      se imc>30 entao
         escreval("Seu peso:", peso, " sua altura:", altura)
         escreval("Voc? est? acima do peso")
      fimse
      cont <- cont+1
   fimenquanto
Fimalgoritmo