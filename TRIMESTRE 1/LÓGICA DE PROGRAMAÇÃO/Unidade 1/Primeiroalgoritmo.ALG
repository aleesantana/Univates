Algoritmo "semnome"
// Disciplina   : [L?gica de Programa??o]
// Tutor: Jean Carlo Souza Krahl 
// Descri??o   : Aqui voc? descreve o que o programa faz! (fun??o)
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
               escreval("o imc ?: ", imc)
               se(imc>30) ent?o
                   escreval("Voc? est? acima do peso")
               senao
                   escreval ("Voc? est? saud?vel.")
               fimse
               cont<-cont+1
      fimenquanto

Fimalgoritmo