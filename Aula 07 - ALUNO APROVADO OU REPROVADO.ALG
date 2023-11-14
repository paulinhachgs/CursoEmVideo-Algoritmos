algoritmo "AlunoAprovadoOuReprovado"
var
   N1, N2, M: Real
inicio
      EscrevaL ("-------------------------")
      EscrevaL ("  ESCOLA JAVALI CANSADO  ")
      EscrevaL ("-------------------------")
      Escreva ("Primeira Nota: ")
      Leia (N1)
      Escreva ("Segunda Nota: ")
      Leia (N2)
      M <- (N1 + N2) / 2
      EscrevaL ("-------------------------")
      EscrevaL ("MÉDIA:",M)
      Se (M >= 7) entao
         EscrevaL ("ALUNO APROVADO")
      FimSe
      Se (M < 7) entao
         EscrevaL ("ALUNO REPROVADO")
      FimSe
      EscrevaL ("-------------------------")
fimalgoritmo
