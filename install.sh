#!/bin/bash

#============================================================================================
echo -e "\e[40;38;5;82m Installing required tools .....\e[0m\n"
echo ""
mkdir $HOME/tools/
mkdir $HOME/wordlist/

#============================================================================================
echo -e "\e[40;38;5;82m Updating the list of packages on your system \e[0m\n"

sudo apt update -y

echo -e "\e[40;38;5;82m Updated successfully \e[0m\n"

#============================================================================================
echo -e "\e[40;38;5;82m Installing python3 \e[0m\n"

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.8

echo -e "\e[40;38;5;82m Installing Go language \e[0m\n"

#Download the Go binary
wget https://golang.org/dl/go1.16.8.linux-amd64.tar.gz

#Remove previous golang installation and extract the new one
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.8.linux-amd64.tar.gz

#Copy the binary to be able to use for any user
cp /usr/local/go/bin/go /usr/bin

#Adding these line to your terminal config file(.bashrc/.zshrc)
echo "export GOROOT=/usr/local/go" >> ~/.bashrc
echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH" >> ~/.bashrc
echo "export PATH=$HOME/go/bin:$PATH" >> ~/.bashrc

#Source your terminal (or restart terminal)
source ~/.bashrc 
rm go1.16.8.linux-amd64.tar.gz

echo -e "\e[40;38;5;82mGo language installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing pip3 \e[0m\n"

sudo apt-get install python3-pip

echo -e "\e[40;38;5;82m pip3 installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing subfinder \e[0m\n"

GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder

echo -e "\e[40;38;5;82m Subfinder Installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing ctfr.py \e[0m\n"

cd $HOME/tools/ && git clone https://github.com/UnaPibaGeek/ctfr.git
cd ctfr
pip3 install -r requirements.txt

echo -e "\e[40;38;5;82m ctfr.py installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing Assestfinder \e[0m\n"

go get -u github.com/tomnomnom/assetfinder

echo -e "\e[40;38;5;82m Assetfinder installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing Findomain \e[0m\n"

cd $HOME/tools/ && wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux
chmod +x findomain-linux
mv findomain-linux /usr/local/bin/findomain

echo -e "\e[40;38;5;82m Findomain installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing sd-goo \e[0m\n"

cd $HOME/tools/ && git clone https://github.com/darklotuskdb/sd-goo.git && cd sd-goo && chmod +x *.sh
mv sd-goo.sh /usr/local/bin

echo -e "\e[40;38;5;82m sd-goo installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing shodan \e[0m\n"

apt install python3-shodan -y

#==============================================================================================
echo -e "\e[40;38;5;82m Installing anew \e[0m\n"

go get -u github.com/tomnomnom/anew

echo -e "\e[40;38;5;82m anew installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing amass \e[0m\n"

snap refresh
sudo snap install amass

echo -e "\e[40;38;5;82m amass installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing gauplus \e[0m\n"

GO111MODULE=on go get -u -v github.com/bp0lr/gauplus

echo -e "\e[40;38;5;82m Gauplus installed \e[0m\n"
#==============================================================================================
echo -e "\e[40;38;5;82m Installing waybackurls \e[0m\n"

go get github.com/tomnomnom/waybackurls

echo -e "\e[40;38;5;82m Waybackurls installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing github-subdomains \e[0m\n"

go get -u github.com/gwen001/github-subdomains

echo -e "\e[40;38;5;82m github-subdomains installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing Crobat \e[0m\n"

go get github.com/cgboal/sonarsearch/crobat

echo -e "\e[40;38;5;82m Crobat installed \e[0m\n"
#==============================================================================================
echo -e "\e[40;38;5;82m Installing Puredns \e[0m\n"

cd $HOME/tools/ && git clone https://github.com/blechschmidt/massdns.git
cd massdns && make && make install

GO111MODULE=on go get github.com/d3mondev/puredns/v2

echo -e "\e[40;38;5;82m Puredns installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing DNSCewl \e[0m\n"

cd $HOME/tools/ && wget https://github.com/codingo/DNSCewl/raw/master/DNScewl
chmod 755 DNScewl
mv DNScewl /usr/local/bin/DNScewl

echo -e "\e[40;38;5;82m DNSCewl installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing dnsvalidator \e[0m\n"

cd $HOME/tools/ && git clone https://github.com/vortexau/dnsvalidator.git
cd dnsvalidator/
python3 setup.py install

echo -e "\e[40;38;5;82m DNSCewl installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing httpx \e[0m\n"

GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx

echo -e "\e[40;38;5;82m httpx installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing Gospider \e[0m\n"

GO111MODULE=on go get -u github.com/jaeles-project/gospider

echo -e "\e[40;38;5;82m Gospider installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing Notify \e[0m\n"

GO111MODULE=on go get -v github.com/projectdiscovery/notify/cmd/notify

echo -e "\e[40;38;5;82m Notify installed \e[0m\n"
#==============================================================================================
echo -e "\e[40;38;5;82m Installing Unfurl \e[0m\n"

go get -u github.com/tomnomnom/unfurl

echo -e "\e[40;38;5;82m Unfurl installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing Unimap \e[0m\n"

cd $HOME/tools/ && eval wget -N -c https://github.com/Edu4rdSHL/unimap/releases/download/0.4.0/unimap-linux
chmod 755 unimap-linux
mv unimap-linux /usr/local/bin/unimap

echo -e "\e[40;38;5;82m Unimap installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing Subjack \e[0m\n"

go get github.com/haccer/subjack

echo -e "\e[40;38;5;82m Subjack installed \e[0m\n"

#==============================================================================================
echo -e "\e[40;38;5;82m Installing Dirsearch \e[0m\n"

cd $HOME/tools/ && git clone https://github.com/maurosoria/dirsearch.git
cd dirsearch
pip3 install -r requirements.txt

echo -e "\e[40;38;5;82m Dirsearch installed \e[0m\n"
