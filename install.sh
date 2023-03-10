sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser


curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg
sudo apt update && sudo apt install -y microsoft-edge-stable

sudo apt install -y freerdp2-dev
set -o vi

sudo apt-get install -y r-base r-base-dev
sudo apt install -y libclang-dev 
sudo apt install -y libssl1.1

wget https://download1.rstudio.org/electron/bionic/amd64/rstudio-2022.12.0-353-amd64.deb
sudo dpkg -i ~/rstudio-2022.12.0-353-amd64.deb

sudo apt --fix-broken install
git clone https://github.com/cxli233/Online_R_learning.git
                   
wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo dpkg -i ~/code_1.76.1-1678294265_amd64.deb

