#!/bin/bash
############################################
# NOME: Relatorio Máquina em Uso           #
# Autor: github.com/hugoitalomc            #
# Data Inicio: 09/20/2023                  #
#                                          #
# Desc. Conceitos Básicos de shell script  #
#retornando informacões da máquina         #                                         #
############################################

# CAPTURA DADOS DA MÁQUINA
HOSTNAME=$(hostname) # NOME MÁQUINA
KERNEL=$(uname -r)  # VERSÃO DO KERNEL
CPUMODEL=$(cat /proc/cpuinfo | grep "model name"|head -n1| cut -c14-)  # QUANTIDADE DE CORES
CPUNO=$(cat /proc/cpuinfo | grep "model name"|wc -l)  # MODELO MÁQUINA
MEMTOTAL=$(expr $(cat /proc/meminfo | grep MemTotal|tr -d ' '|cut -d: -f2|tr -d kB) / 1024)  # MEMÓRIA TOTAL EM MB
FILESYS=$(df -h | egrep -v '(tmpfs|udev)')  # PARTICÕES HD
UPTIME=$(uptime -s)  # DATA ATIVACÃO DA MÁQUINA

# EXIBICÃO DE DADOS
echo "*** RELATORIO MÁQUINA ***"
echo "NOME DA MÁQUINA:$HOSTNAME"
echo "VERSÃO DO KERNEL:$KERNEL"
echo "CPU INFO >>"
echo "____NÚCLEOS:$CPUNO"
echo "____MODELO:$CPUMODEL"
echo "____MEM TOTAL:$MEMTOTAL"
echo "LIGADA EM:$UPTIME"
echo "HD PART >>"
echo "$FILESYS"
