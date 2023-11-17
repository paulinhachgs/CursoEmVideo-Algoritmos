algoritmo "EscolhendoPessoas"
var
   I, C, contM, contF: Inteiro
   S, R: Caractere
inicio
Repita
      EscrevaL ("==========================")
      EscrevaL ("    SELETOR DE PESSOAS    ")
      EscrevaL ("==========================")
      Escreva ("Qual o Sexo? [M/F]: ")
      Leia (S)
      
      Escreva ("Qual a idade? ")
      Leia (I)
      
      EscrevaL ("Qual a cor do cabelo?")
      EscrevaL ("---------------------")
      EscrevaL ("[1] Preto")
      EscrevaL ("[2] Castanho")
      EscrevaL ("[3] Loiro")
      EscrevaL ("[4] Ruivo")
      Leia (C)
      
      EscrevaL ("Quer continuar? [S/N]: ")
      Leia (R)
         Se (S = "M") e (I >= 18) e (C = 2) entao
                  contM <- (contM + 1)
         Senao
              Se (S = "F") e (I >= 25) e (I <= 30) e (C = 3) entao
                 contF <- (contF + 1)
              Fimse
         Fimse

      LimpaTela
Ate (R = "N")
EscrevaL ("Total de homens com mais de 18 e cabelos castanhos: ",contM)
EscrevaL ("Total de mulheres entre 25 e 30 e cabelos loiros: ", contF)
fimalgoritmo