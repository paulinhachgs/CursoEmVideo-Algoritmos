// Empréstimo parcelado com juros de 20%

algoritmo "EmprestimoBancario"
var
   empres, juros, parc, total, parcValor: Real
   R: Caractere
inicio
    Escreva ("Qual o valor do empréstimo? R$: ")
    Leia (empres)
         juros <- ((empres * 20) / 100)
         total <- empres + juros
    EscrevaL ("O valor do empréstimo com juros de 20% será de: R$",total)
    Escreva ("Em quantas parcelas gostaria de pagar? ")
    Leia (parc)
         parcValor <- total / parc
    EscrevaL ("Total do empréstimo: R$",total, " em", parc, " parcelas de R$", parcValor,".")
    
fimalgoritmo
