# Geonode Docker Installation Scripts 

# Use CTRL + A and d to detach from the screen if you are working on remote server 

cd ..

sudo apt-get update

sudo apt install -y screen 

screen 
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get install -y docker-ce

sudo usermod -aG docker $USER

source $HOME/.bashrc

docker run hello-world

sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

git clone https://github.com/GeoNode/geonode.git

cd geonode

echo "Enter Your Public Address or enter localhost if your are using on local machine"
read IPADDRESS

sed -i "s/ALLOWED_HOSTS=['localhost', ]/ALLOWED_HOSTS=['*']/g" docker-compose.override.localhost.yml

sed -i "s/localhost/$IPADDRESS/g" docker-compose.override.localhost.yml

docker-compose -f docker-compose.yml -f docker-compose.override.localhost.yml up --build


