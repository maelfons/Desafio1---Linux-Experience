#!/bin/bash

echo "Script de execução para criação de diretorios e usuários iniciais referentes ao desafio 1"

echo "Criando Dirétorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de Usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -c "Carlos Desafio"  -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_ADM
useradd maria -c "Maria Desafio" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_ADM
useradd joao -c "Joao Desafio" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_ADM
useradd debora -c "Debora Desafio"  -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_VEN
useradd sebastiana -c "Sebastiana Desafio" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_VEN
useradd roberto -c "Roberto Desafio" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_VEN
useradd josefina -c "Josefina Desafio" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_SEC
useradd amanda -c "Amanda Desafio"  -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_SEC
useradd roberto -c "Roberto Desafio"  -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_SEC

echo "Definindo Permissões"

chown root:root /publico
chmod 777 /publico

chown root:GRP_ADM /adm
chmod 770 /ven

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec


echo "Script executado com sucesso"
