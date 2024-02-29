echo Actualizando sistema
apt-get update -y
apt update -y && apt upgrade -y
echo Instalando Haproxy
apt install -y haproxy
echo iniciando Haproxy
systemctl enable haproxy