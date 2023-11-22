#!/bin/bash

############################################
# Autor: github.com/hugoitalomc            #
# Data Inicio: 10/20/2023                  #
#                                          #
#  Exemplo de estrutura condicional        #
#  Programa: Calculadora                   #
############################################

echo "********************CALCULADORA******************"
echo "*             1) SOMA            (+)             *"
echo "*             2) SUBTRACÃO       (-)             *"
echo "*             3) DIVISÃO         (/)             *" 
echo "*             3) MULTIPLICACÃO   (*)             *"
echo "********************===========******************"
read -p "DIGITE NUMERO: " VALOR1
echo
read -p "OPERACÃO: " OP
echo
read -p "DIGITE NÚMERO: " VALOR2

if [ ! -z "$OP" ]
then
    case "$OP" in 
        "+")
            echo "RESULTADO: $(expr $VALOR1 + $VALOR2)" ;;
        
        "-")
            echo "RESULTADO: $(expr $VALOR1 - $VALOR2)" ;;
        
        "/")
            echo "RESULTADO: $(($VALOR1 / $VALOR2))" ;;

        "*")
            echo "RESULTADO: $(($VALOR1 * $VALOR2))" ;;
        *)
            echo "OP INVÁLIDA" ;;

    esac
fi