algoritmo "Analisador de valores"
var
   V, S, N, Pares, Nulo: Inteiro
   Dcin, M: Real
inicio
   Para V := 1 ate 5 faca
      Escreva ("Digite o", V ,"� valor: ")
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
   EscrevaL ("A soma entre os valores �",S)
   EscrevaL ("A m�dia entre os valores �",M)
   EscrevaL ("A soma dos valores pares �",Pares)
   EscrevaL ("Valores divis�veis por cinco:",Dcin)
   EscrevaL ("Valores nulos:",Nulo)
fimalgoritmo