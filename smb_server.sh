#! /bin/bash

echo "Instalando samba..."
apt install samba -y

echo "Configurando inicialização do samba..."
systemctl enable smbd

echo "Criando diretório compartilhado..."
mkdir /publica
chmod 777 /publica

echo "Registrando diretorio compartilhado no arquivo smb.config"

echo "[Publica]" >> /etc/samba/smb.conf

echo "path = /publica" >> /etc/samba/smb.conf
echo "writable = yes" >> /etc/samba/smb.conf
echo "guest ok = yes" >> /etc/samba/smb.conf
echo "guest only = yes" >> /etc/samba/smb.conf

echo "reiniciando serviço smbd"
systemctl restart smbd
