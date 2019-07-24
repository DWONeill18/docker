#!/bin/bash


# instal lthe UI ad the frontend user
sudo useradd -m -s /bin/bash frontend

sudo su - frontend << EOF
rm -rf ~/TeamAPoolProjectUI
git clone ${git_URL2}
cd TeamAPoolProjectUI/
git checkout Developer
yes | npm install
EOF
yes | sudo npm install -g @angular/cli

ng --version
