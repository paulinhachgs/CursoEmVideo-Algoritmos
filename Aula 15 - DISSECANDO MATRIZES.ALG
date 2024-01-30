algoritmo "Dissecando Matrizes"
var
   m: vetor[1..4, 1..4] de Inteiro
   l, c, opcao: Inteiro

Procedimento  MostraMatriz()
inicio
   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Escreva(m[l,c]:4)
      FimPara
      EscrevaL()
   FimPara
FimProcedimento

Procedimento DiagonalPrincipal()
var
   t: inteiro
inicio
   Para l <- 1 ate 4 faca
      EscrevaL(m[l,l]:4)
      Para t <- 1 ate l faca
         Escreva("    ")
      FimPara
   FimPara
FimProcedimento

Procedimento TrianguloSuperior()
var
   t: Inteiro
inicio
   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Se (l <> c) e (l < c) entao
            Escreva(m[l,c]:3)
         FimSe
         Para t <- 1 ate l faca
            Escreva(" ")
         FimPara
      FimPara
      EscrevaL()
   FimPara
FimProcedimento

Procedimento TrianguloInferior()
inicio
   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Se (l <> c) e (l > c) entao
            Escreva(m[l,c]:4)
         FimSe
      FimPara
      EscrevaL()
   FimPara
FimProcedimento


inicio
   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Escreva("Digite o valor da Posição [",l,",",c,"]: ")
         Leia(m[l,c])
      FimPara
   FimPara

   LimpaTela
   Repita
      EscrevaL()
      EscrevaL("   MENU DE OPÇÕES   ")
      EscrevaL("====================")
      EscrevaL("[1] Mostrar a Matriz")
      EscrevaL("[2] Diagonal Principal")
      EscrevaL("[3] Triângulo Superior")
      EscrevaL("[4] Triângulo Inferior")
      EscrevaL("[5] Sair")
      Repita
         EscrevaL("===== OPÇÃO: ")
         Leia(opcao)
      Ate (opcao = "5")
      LimpaTela

      Escolha opcao
      Caso 1
         MostraMatriz()

      Caso 2
         DiagonalPrincipal()

      Caso 3
         TrianguloSuperior()

      Caso 4
         TrianguloInferior()

      Caso 5
         EscrevaL("ENCERRANDO...")
      FimEscolha
   Ate (opcao = 5)

fimalgoritmo