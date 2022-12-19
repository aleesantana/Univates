Algoritmo "AREA DO RETANGULO"
// Disciplina   : [Lógica de Programação]
// Tutor: Jean Carlo Souza Krahl
// Descrição   : Cálculo da área do retângulo
// Autor(a)    : Alessandra Elisa Santana - 583526
// Data atual  : 23/02/2022
Var
   y, x: real
   a: real
Inicio
      //leitura dos valores das variáveis
      escreval("Digite a altura do retângulo: ")
      leia (y)
      escreval ("Digite a largura do retângulo: ")
      leia(x)
      //cálculo da área
      a <- (x*y)
      //Apresentação do resultado
      escreval("Você informou",x, " para a largura e",y, " para a altura. Portanto, a área do retângulo é: ", a)
Fimalgoritmo