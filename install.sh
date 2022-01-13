#!/bin/bash

#============================================================================================
echo -e "\e[40;38;5;82m Installing required tools .....\e[0m\n"
echo ""
mkdir $HOME/tools/

#============================================================================================
echo -e "\e[40;38;5;82m Updating the list of packages on your system \e[0m\n"

sudo apt update -y

echo -e "\e[40;38;5;82m Updated successfully \e[0m\n"

#============================================================================================
echo -e "\e[40;38;5;82m Installing python3 \e[0m\n"

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3

#==============================================================================================
echo -e "\e[40;38;5;82m Installing pip3 \e[0m\n"

sudo apt-get install python3-pip

echo -e "\e[40;38;5;82m pip3 installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing Findomain \e[0m\n"

cd $HOME/tools/ && wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux
chmod +x findomain-linux
mv findomain-linux /usr/local/bin/findomain

echo -e "\e[40;38;5;82m Findomain installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing Dirsearch \e[0m\n"

cd $HOME/tools/ && git clone https://github.com/maurosoria/dirsearch.git
cd dirsearch
pip3 install -r requirements.txt

echo -e "\e[40;38;5;82m Dirsearch installed \e[0m\n"

