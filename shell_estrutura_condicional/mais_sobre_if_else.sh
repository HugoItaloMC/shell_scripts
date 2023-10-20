#!/bin/bash

############################################
# Autor: github.com/hugoitalomc            #
# Data Inicio: 10/20/2023                  #
#                                          #
#  Exemplos de estrutura condicional       #
# if else.  Verificando usuário            #
############################################

echo "Usuário passado: $1"

VERIFICANDO_USUARIO=$(grep "$1" /etc/passwd)

if [ -n "$VERIFICANDO_USUARIO" ]
then
     echo "Usuário $1 existente."
     echo "$VERIFICANDO_USUARIO"
else
    echo "Usuário $1 inexistente."
fi
