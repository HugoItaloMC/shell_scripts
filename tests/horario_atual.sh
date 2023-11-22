#!/bin/bash

############################################
# Autor: github.com/hugoitalomc            #
# Data Inicio: 10/20/2023                  #
#                                          #
#  Exemplo de estrutura condicional        #
#  Programa: Que horas são                 #
############################################

echo "Hora Atual: $(date +%T)"

if [ $(date +%H) -ge 00 -a "$HORAS" -lt 12 ]
then
    echo "Bom dia"
elif [ $(date +%H) -ge 12 -a "$HORAS" -lt 18 ]
then
    echo "Boa tarde"

elif [ $(date +%H) -le 23 -a "$HORAS" -ge 18 ]
then
    echo "Boa noite"
fi
