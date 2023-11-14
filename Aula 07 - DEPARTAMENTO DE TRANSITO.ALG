algoritmo "DepartamentoDeTransito"
var
   anoA, anoN, idade: Inteiro
inicio
   EscrevaL ("--------------------------")
   EscrevaL (" DEPARTAMENTO DE TRÂNSITO ")
   EscrevaL ("--------------------------")
   Escreva ("Ano Atual (yyyy): ")
   Leia (anoA)
   Escreva ("Ano de Nascimento (yyyy): ")
   Leia (anoN)
   idade <- anoA - anoN

   EscrevaL ("")
   EscrevaL ("--------- STATUS ---------")
   EscrevaL ("IDADE:", idade)
   Se (idade >= 18) entao
      EscrevaL ("APTO A TIRAR CARTEIRA")
   FimSe
   Se (idade < 18) entao
      EscrevaL ("INAPTO A TIRAR CARTEIRA")
   FimSe
   EscrevaL ("--------------------------")
fimalgoritmo
