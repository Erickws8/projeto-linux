#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários..."

#usuários do grupo adm
useradd carlos -m -c 'Calos Silva' -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -c 'Maria Joana' -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -c 'João Souza' -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

#usuários do grupo ven
useradd debora -m -c 'Debora Amaral' -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -c 'Sebastiana Cristina' -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -c 'Roberto Carlos' -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

#usuários do grupo sec
useradd josefina -m -c 'Josefina de Jesus' -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -c 'Amanda Correa' -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rodrio -m -c 'Rogerio Mendez' -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Alterando dono e grupo dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Alterando permissões dos diretórios..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Processo finalizado com sucesso." 


