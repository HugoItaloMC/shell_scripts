#!/bin/bash

############################################
# Autor: github.com/hugoitalomc            #
# Data Inicio: 10/20/2023                  #
#                                          #
#  Exemplo de estrutura condicional        #
#  Programa: Backup pasta                  #
############################################

DATA_ATUAL=$(date +"%Y%m%d%H%M")    # Obter hora e datas atuais
DIR_DEST="$HOME/backup"             # Verificar se o diretório de backup já existe
ARQ="backup_smooth_$DATA_ATUAL.tgz"   # Arquivo de backup
FIND_BACKUP=$(find $DIR_DEST -ctime -7 -name backup_smooth_\*.tgz) # Verifica se algum arquivo de backup foi criado nos últimos 7 dias


if [ ! -d "$DIR_DEST" ] 
then
    # Cria o diretório de backup
    echo "CRIANDO DIRETÓRIO BACKUP"
    mkdir -p "$HOME/backup"
fi


if [ "$FIND_BACKUP" ] 
then
    echo "Existe arquivos de backup dos últimos 7 dias, deseja continuar ?"
    echo -n "(S/N): "
    read -n1 OP
    echo

    if [ "$OP" = "n" -o "$OP" = "N" -o "$OP" = "" ] 
    then
        echo "CANCELANDO..."
        sleep 2
        exit 1

    elif [ "$OP" = "S" -o "$OP" = "s" ]
    then
        echo "Criando Mais um Backup"
    else
        echo "OPCÃO INVÁLIDA"
        sleep2
        exit 2
    fi
fi

echo "Iniciando..."
tar zcvpf "$DIR_DEST/$ARQ" --absolute-name "$HOME/Documentos/estudos/smooth/"
echo "Arquivo gerado $DIR_DEST/$ARQ"
