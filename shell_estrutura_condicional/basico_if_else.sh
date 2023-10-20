#!/bin/bash

############################################
# Autor: github.com/hugoitalomc            #
# Data Inicio: 10/20/2023                  #
#                                          #
#    Em shell-script existem o tratamento  #
#  de uma estrutura condicional é diferen- #
#  te para string e números. Abaixo uma    #
#  descricão:                              #
#                                          #
#  Conceitos Básicos estrutura condicional #
# com shell-script.                        #
# (if, elif, then else, test)              #
#                                          #
#  Testar valores numéricos                #
#   -eq   igual (equal)                    #
#   -ne   Diferente (not equal)            #
#   -gt   Maior que (great than)           #
#   -ge   Maior ou igual que (Great equal) #
#   -lt   Menor que (lower than)           #
#   -le   Menor ou igual que (lower equal) #
#                                          #
#  Testar String                           #
#   =    Uma string igual a outra          #
#   !=   Uma string diferente da outra     #
#   -n   String ñ nula                     #
#   -z   String nula                       #
#                                          #
#   Também temos podemos testar arquivos   #
#    -f    É um arquivo                    #
#    -d    É um diretório                  #
#    -r    Tem permissão de leitura        #
#    -w    Tem permissão de escrita        #
#    -x    Tem permissão de execucão       #
#    -s    Possui tamanho maior que 0      #
############################################

echo "Entrada : $1"

# Testando números
if [ "$1" -gt 5 ]     
# Podemos também utilizar a palavra (test) ex: `if test 4 -gt 3`
then
    echo "Maior que 5"

elif [ "$1" -le 4 ]
then
    echo "Igual a 4"
else
    echo "Menor que 5 e 4"
fi
