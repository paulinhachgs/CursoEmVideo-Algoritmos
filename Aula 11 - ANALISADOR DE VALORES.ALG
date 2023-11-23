algoritmo "Analisador de valores"
var
   V, S, N, Pares, Nulo: Inteiro
   Dcin, M: Real
inicio
   Para V := 1 ate 5 faca
      Escreva ("Digite o", V ,"º valor: ")
      Leia (N)
      S <- S + N
      M <- S / 5
         Se (N%2 = 0) entao
            Pares <- Pares + N
         FimSe
         Se (N%5 = 0) entao
            Dcin <- Dcin + 1
         FimSe
         Se (N = 0) entao
            Nulo <- Nulo + 1
         FimSe
   FimPara
   EscrevaL ("A soma entre os valores é",S)
   EscrevaL ("A média entre os valores é",M)
   EscrevaL ("A soma dos valores pares é",Pares)
   EscrevaL ("Valores divisíveis por cinco:",Dcin)
   EscrevaL ("Valores nulos:",Nulo)
fimalgoritmo