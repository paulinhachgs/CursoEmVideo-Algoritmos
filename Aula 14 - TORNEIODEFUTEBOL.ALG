algoritmo "TorneioDeFutebol"
var
   time: vetor[1..3] de Caractere
   aux, i, c: Inteiro
inicio
   EscrevaL("--------------------------")
   EscrevaL("    CAMPEONATO FUTEBOL    ")
   EscrevaL("--------------------------")
   Para i <- 1 ate 3 faca
      Escreva ("Nome do",i,"º time: ")
      Leia (time[i])
   FimPara

   LimpaTela
   EscrevaL("----------------------------------")
   EscrevaL("        TABELA DE PARTIDAS        ")
   EscrevaL("----------------------------------")
   aux <- 1 ate 3
   Para c <- 1 ate 3 faca
      Para i <- aux+1 ate 3 faca
         EscrevaL(time[c]:12,"[ ] x [ ]  ", time[i]:15)
      FimPara
   FimPara
fimalgoritmo