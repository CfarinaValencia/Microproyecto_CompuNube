echo Actualizando sistema
apt-get update -y
apt update -y && apt upgrade -y
echo Instalando Consul
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg 
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list 
sudo apt update -y && sudo apt install -y consul 
echo Instalando node
sudo apt install -y nodejs 
sudo apt install -y npm