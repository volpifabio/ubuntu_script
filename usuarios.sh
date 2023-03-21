#!/bin/bash


echo "diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo  "grupo users"

groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

echo "usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_adm
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_adm
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_adm

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_ven
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_ven
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_ven

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_sec
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_sec
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_sec

echo "permissões"

chown root:grp_adm /adm
chown root:grp_ven /ven
chown root:grp_sec /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
