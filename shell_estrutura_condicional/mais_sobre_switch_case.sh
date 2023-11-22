#!/bin/bash

############################################
# Autor: github.com/hugoitalomc            #
# Data Inicio: 10/20/2023                  #
#                                          #
#  Exemplo de estrutura condicional switch #
# case                                     #
#  Um menu de opcões                       #
############################################

echo "************ MENU OPCÕES ************"
echo "1 - Inserir Dados"
echo "2 - Atualizar Dados"
echo "3 - Remover Dados"
echo "q - Sair"
read -p "OPCÃO: " OP
echo

case "$OP" in
    1)
        echo "Inserindo Dados"
        sleep 3 ;;
    2)
        echo "Atualizando Dados"
        sleep 3 ;;
    3)
        echo "Removendo Dados"
        sleep 3 ;;
    q | Q)
        echo "Saindo..."
        sleep 3 ;;
    
    *)
        echo "Opcão Inválida"
        exit 2 ;;
esac