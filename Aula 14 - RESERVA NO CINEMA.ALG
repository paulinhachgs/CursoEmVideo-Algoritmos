algoritmo "Reserva No Cinema"
var
   B: vetor [1..10] de Caractere
   i: Inteiro
   reser: Inteiro
   resp: Caractere

Procedimento AssentosDisponiveis()
var
i: Inteiro
inicio
   Para i <- 1 ate 10 faca
      Se (B[i] = "") entao
         Escreva("[ B",i," ]")
      senao
         Escreva("---")
      FimSe
   FimPara
FimProcedimento

inicio
   Repita
      LimpaTela
      AssentosDisponiveis()
      EscrevaL("")
      EscrevaL("-----------------------------------------------------------------------")
      Escreva("Reservar a cadeira: B")
      Leia(reser)
      Se (B[reser]="") entao
         B[reser] <- "-"
         EscrevaL("Cadeira B", reser, " RESERVADA!")
      Senao
         EscrevaL("ERRO: Lugar Ocupado!")
      FimSe
      Escreva("Quer reservar outro? [S/N] ")
      Leia(resp)
   Ate (resp = "N")
fimalgoritmo