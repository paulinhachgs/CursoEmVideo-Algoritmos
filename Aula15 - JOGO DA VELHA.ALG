algoritmo "Jogo da Velha"
var
   tabuleiro: vetor[1..3, 1..3] de Caractere
   l, c, cont, Po: Inteiro
  Simbolo : Caractere
  R: Logico
  
Procedimento mostrarTabuleiro()
inicio
   Para l <- 1 ate 3 faca
      Para c <- 1 ate 3 faca
         Se tabuleiro[l,c]=("") entao
            Escreva (tabuleiro[l,c]:4)
         Senao
            Escreva ("   ",tabuleiro[l,c]:1)
         FimSe
      FimPara
      Escreval ()
      Escreval ("  ---|---|---")
   FimPara
FimProcedimento

Procedimento trocarJogador()
inicio
   Se (simbolo = "X") entao
      simbolo <- "O"
   senao
      Simbolo <- "X"
   FimSe
FimProcedimento

Funcao Jogar(S: Caractere; P: Inteiro): Logico
Var mudou: logico
inicio
   mudou <- falso
   Para L <- 1 ate 3 faca
      Para C <- 1 ate 3 faca
         Se(tabuleiro[l,c] = NumpCarac(P)) entao
            tabuleiro[l,c] <- S
            mudou <- verdadeiro
         FimSe
      FimPara
   FimPara
   Retorne mudou
FimFuncao

Funcao acabouEmVelha(): Logico
Var
  terminou: Logico
  velha: Inteiro
inicio
   terminou <- falso
   // Jogos ganhos em linha
   Para l <- 1 ate 3 faca
      Se (tabuleiro[l,1] = tabuleiro[l,2]) e (tabuleiro[l,2] = tabuleiro[l,3]) entao
         terminou <- verdadeiro
      FimSe
   FimPara
   
   // Jogos ganhos em coluna
   Para c <- 1 ate 3 faca
      Se (tabuleiro[1,c] = tabuleiro[2,c]) e (tabuleiro[2,c] = tabuleiro[3,c]) entao
         terminou <- verdadeiro
      FimSe
   FimPara
   // Jogos ganhos em diagonal
   Se (tabuleiro[1,1] = tabuleiro[2,2]) e (tabuleiro[2,2] = tabuleiro[3,3]) entao
      terminou <- verdadeiro
   FimSe
   Se (tabuleiro[1,3] = tabuleiro[2,2]) e (tabuleiro[2,2] = tabuleiro[3,1]) entao
      terminou <- verdadeiro
   FimSe

   // Jogos que terminam em velha
   velha <- 0
   Para l <- 1 ate 3 faca
      Para c <- 1 ate 3 faca
         Se (tabuleiro[l,c] <> "X") e (tabuleiro[l,c] <> "O") entao
            velha <- velha + 1
         FimSe
      FimPara
   FimPara
   Se (velha = 0) entao
      terminou <- verdadeiro
   FimSe

   // Retorna se o jogo acabou ou nao
   Retorne terminou
FimFuncao

inicio
   cont <- 1
   simbolo <- "X"
   Para l <- 1 ate 3 faca
      Para c <- 1 ate 3 faca
         tabuleiro[l,c] <- NumpCarac(cont)
         cont <- cont + 1
      FimPara
   FimPara
   
   mostrarTabuleiro()
   Repita
      Repita
         EscrevaL("Vai jogar [", simbolo:1, "] em qual posicao? ")
         Leia(Po)
         R <- Jogar(Simbolo, Po)
         Se (R = falso) entao
            EscrevaL("JOGADA INVALIDA!")
         FimSe
      Ate (R = verdadeiro)

      trocarJogador()
      LimpaTela

      mostrarTabuleiro()
   Ate (acabouEmVelha() = verdadeiro)
   EscrevaL("JOGO FINALIZADO!")
fimalgoritmo