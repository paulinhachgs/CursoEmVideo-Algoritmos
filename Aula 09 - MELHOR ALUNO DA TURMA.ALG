algoritmo "Melhor aluno da turma"
var
   quant, cont: Inteiro
   nome, alunoM: Caractere
   nota, notaM: Real
inicio
   EscrevaL ("-----------------------")
   EscrevaL (" Escola Javali Cansado")
   EscrevaL ("-----------------------")
   Escreva ("Quantos alunos a turma tem? ")
   Leia (quant)
   cont <-1
   Enquanto (cont <= quant) faca
      EscrevaL ("--------------------")
      Escreva ("Nome do aluno: ")
      Leia (nome)
      Escreva ("Nota de ",nome,": ")
      Leia (nota)
      cont <- cont +1
      Se (nota > notaM) entao
         notaM <- nota
         alunoM <- nome
      FimSe
   FimEnquanto
   EscrevaL (" ")
   EscrevaL (alunoM," foi quem teve melhor desempenho na escola, com a nota", notaM,"")
fimalgoritmo