i#!/bin/bash

echo "### Criando os diretórios ###"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

ls -l / 
read -p Continuar
echo
echo "### Criando os grupos de usuários ###"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

cat /etc/group
read -p Continuar
echo
echo "### Criando os usuários ###"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

cat /etc/passwd
read -p Continua
echo
echo "### Atribuir grupos nas pastas ###"
echo
chown :GRP_ADM /adm
chown :GRP_VEN /ven
chown :GRP_SEC /sec
ls -l /
read -p Continuar

echo "### Atribuir permissao nas pastas ###"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
ls -l
read -p Continuar
echo
echo "### Fim ###"

