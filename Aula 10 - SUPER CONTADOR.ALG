algoritmo "SuperContador"
var
   R, contD, contC: Inteiro
inicio
contD <- 11
contC <- 1
Repita
   EscrevaL ("")
   EscrevaL ("=================")
   EscrevaL ("|    M E N U    |")
   EscrevaL ("=================")
   EscrevaL ("| [1] De 1 a 10 |")
   EscrevaL ("| [2] De 10 a 1 |")
   EscrevaL ("| [3] Sair      |")
   EscrevaL ("=================")
   Escreva ("Escreva aqui a opção desejada: ")
   Leia (R)
   Se (R = 1) entao
       Enquanto (contC <= 10) faca
                contC <- contC + 1
                Escreva (contC, "..")
       FimEnquanto
   senao
        Se (R = 2) entao
            Enquanto (contD >= 1) faca
                contD <- contD - 1
                Escreva (contD, "..")
            FimEnquanto
        senao
             EscrevaL ("Operação finalizada pelo usuário")
        FimSe
   FimSe
Ate (R = 3)
fimalgoritmo