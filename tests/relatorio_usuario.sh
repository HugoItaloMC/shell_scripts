#!bin/bash
####################################################
#  NOME: Relatório do Usuário do Sistema           #
#                                                  #
#  AUTOR: github.com/hugoitalomc                   #
#  DATA: 09/22/2023                                #
#  DESC: Informacões do usuário do sistema (Linux) #
#  USO: . | bash relatorio_usuario.sh <usuario>    #
####################################################

ls /home/$1 > /dev/null 2>&1 || echo "USUÁRIO INEXISTENTE"
USERID=$(grep $1 /etc/passwd | cut -d ":" -f3)
DESC=$(grep $1 /etc/passwd | cut -d":" -f5 | tr -d ,)
USOHOME=$(du -sh /home/$1|cut -f1)
LASTLOGIN=$(lastlog -u $1)

echo "*** RELATÓRIO USUÁRIO DO SISTEMA ***"
echo "UID: $USERID"
echo "NOME OU DESCRICAO:$DESC"
echo "TOTAL USADO NO /home/$1: $USOHOME"
echo "ÚLTIMO LOGIN:"
echo "$LASTLOGIN"
