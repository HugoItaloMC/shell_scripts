#!/bin/bash

############################################
# Autor: github.com/hugoitalomc            #
# Data Inicio: 10/20/2023                  #
#                                          #
#  Exemplo de estrutura condicional switch #
# case                                     #
############################################

read -p "DIGITE UM DADO: " VALOR

case "$VALOR" in
# No exemplo vamos comparar utilizando REGEX, mas podemos utilizar com outros tipo de dados
    [0-9])
        echo " '$VALOR'  é um número"
        ;;  # Dois pontos e virgula para fechar uma linha do bloco de condicão `case`
    
    [a-z])
        echo "'$VALOR'  é uma letra minúscula"
        ;;
    [A-Z])
        echo "'$VALOR'  é uma letra maiúscula"
        ;;
    *)  # *) serve como condicão final, similar ao `else`
        echo "'$VALOR'  é um caractere especial"
esac  # Fechando Bloco do condicão `case`
