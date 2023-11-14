algoritmo "Contagem Inteligente"
var
   N1, N2, cont: Inteiro
inicio
   EscrevaL ("----------------------")
   EscrevaL (" Contagem Inteligente")
   EscrevaL ("----------------------")
   Escreva ("Início: ")
   Leia (N1)
   Escreva ("Fim: ")
   Leia (N2)
   cont <- 1
   Se (N1 < N2) entao
      Enquanto (N1 <= N2) faca
         Escreva (N1,"..")
         N1 <- N1 + cont
      FimEnquanto
   senao
      Enquanto (N1 >= N2) faca
         Escreva (N1,"..")
         N1 <- N1 - cont
      FimEnquanto
   FimSe
fimalgoritmo