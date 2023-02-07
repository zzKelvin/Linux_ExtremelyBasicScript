#!/bin/bash
echo "Modelando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Chamando os grupos de usuarios..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Chamando a criação dos usuarios..."
useradd carlos -m -G GRP_ADM
useradd maria -m -G GRP_ADM
useradd joao -m -G GRP_ADM
passwd -e carlos
passwd -e maria
passwd -e joao

useradd debora -m -G GRP_VEN
useradd sebastiana -m -G GRP_VEN
useradd roberto -m -G GRP_VEN
passwd -e debora
passwd -e sebastiana
passwd -e joao

useradd josefina -m -G GRP_SEC
useradd amanda -m -G GRP_SEC
useradd rogerio -m -G GRP_SEC
passwd -e josefina
passwd -e amanda
passwd -e rogerio

echo "Dando as devidas permissões..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado..."


