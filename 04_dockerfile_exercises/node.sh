!#bin/bash

#variables
program=nodejs
git_URL1=https://github.com/Nboaram/TeamAPoolProjectBackend.git
git_URL2=https://github.com/Nboaram/TeamAPoolProjectUI.git
#installs
sudo apt -y install
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install git
#sudo apt install screen
sudo apt -y install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install -y mongodb
node --version
npm --version
#yes | npm install -g @angular/cli
#create a backend user
sudo useradd --create-home backend
sudo usermod --shell /bin/bash backend
#git
cd ../../backend/
sudo git clone $git_URL1
cd T*/
sudo git checkout Developer
#install the nodejs systemd service script
sudo cp /home/terraform/MEAN_scripts/nodejs.service /etc/systemd/system/
#load in new service for systemd
sudo systemctl daemon-reload
#start npm
yes | sudo npm install
#start the nodejs service
sudo systemctl start nodejs
sudo systemctl enable nodejs

