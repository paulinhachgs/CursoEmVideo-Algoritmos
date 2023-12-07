algoritmo "CorrigindoProvas"
var
   gab: vetor [1..5] de Caractere
   nome: vetor [1..3] de Caractere
   res: vetor [1..5] de Caractere
   nota: vetor [1..3] de Real
   i: Inteiro
   s, m: Real

Procedimento Gabarito ()
var
   c: Inteiro
inicio
   EscrevaL("Passo 1 - Cadastro de Gabarito")
   EscrevaL("-------------------------------")
   Para c <- 1 ate 5 faca
      Escreva("Questão",c,": ")
      Leia(gab[c])
   FimPara
FimProcedimento

Funcao Resposta():Real
var
   c: Inteiro
   TotA: Real
inicio
      TotA <- 0
      Para c <- 1 ate 5 faca
         Escreva("Questão",c,": ")
         Leia(res[c])
         Se (res[c] = gab[c]) entao
            TotA <- TotA + 2
         FimSe
      FimPara
      Retorne TotA
FimFuncao

inicio
   Gabarito ()
   Para i <- 1 ate 3 faca
      LimpaTela
      EscrevaL("----------------------")
      EscrevaL("ALUNO",i)
      EscrevaL("----------------------")
      Escreva("Nome: ")
      Leia(nome[i])
      nota[i] <- Resposta()
      s <- s + nota[i]
   FimPara
   
   LimpaTela
    EscrevaL("NOTAS FINAIS")
    EscrevaL("----------------------")
    Para i <- 1 ate 3 faca
       EscrevaL(nome[i]:15, nota[i]:4:1)
    FimPara
    
    m <- s / 3
    EscrevaL("----------------------")
    EscrevaL("Média da Turma:", M:4:1)
fimalgoritmo