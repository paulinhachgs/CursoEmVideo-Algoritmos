algoritmo "Sequencia de Fibonacci"
var
   C, C1, C2, cont: Inteiro
inicio
   C <- 0
   C1 <- 1
   Escreva (C, C1)
   Para cont <- 3 ate 15 faca
      C2 <- C + C1
      Escreva (C2)
      C <- C1
      C1 <- C2
   FimPara
fimalgoritmo