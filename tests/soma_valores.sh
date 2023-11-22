#!/bin/bash

############################################
# Nome: Soma Valores                       #
# Autor: github.com/hugoitalomc            #
# Data Inicio: 09/20/2023                  #
#                                          #
# Desc: Soma Valores de Entrada do usuário #
#                                          #
############################################

read -p "DIGITE PRIMEIRO VALOR: " VALOR1
read -p "DIGITE SEGUNDO VALOR: " VALOR2

echo "RESULTADO : $(expr $VALOR1 + $VALOR2)"
