algoritmo "UmaPartidaDeFutebol"
var
   B, M, Resul, Dif: Inteiro
   status: Caractere
inicio
   EscrevaL("-----------------------")
   EscrevaL("   BANGU X MADUREIRA   ")
   EscrevaL("-----------------------")
   Escreva("Quantos gols do BANGU? ")
   Leia(B)
   Escreva("Quantos gols do MADUREIRA? ")
   Leia(M)
   Resul <- B - M
   Dif <- Abs(Resul)
   EscrevaL("-----------------------")
   EscrevaL("DIFERENÇA:", Dif)
   Se (Dif = 0) Então
      status <- "EMPATE"
   senao
      Se (Dif < 4) Então
         status <- "PARTIDA NORMAL"
      senao
         status <- "GOLEADA"
      FimSe
   FimSe
   EscrevaL("STATUS:", status)
   EscrevaL("-----------------------")
fimalgoritmo