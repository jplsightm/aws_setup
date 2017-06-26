# Purpose - This generally gets AWS (or any ubuntu instance for that matter) updated how I want it to look. Unfortunatly
#  this is probably not everything, but rome was not built in a day.

sudo apt install python -y
sudo apt install htop -y
sudo apt install python-pip -y
sudo apt install git -y
sudo apt-get install zsh -y
sudo apt-get install git-core -y
sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chown -R $USER:$GROUP /home/ubuntu/.oh-my-zsh
# TODO: add curl command to get ~/.zshrc file
sudo apt install byobu -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce -y
# Test it:
# sudo docker run hello-world

# Getting pip working
pip install --upgrade pip
pip install docker-compose

# Arguably this is already done :)
sudo mkdir /opt/yetijoe
sudo chown -R $1:$1 /opt/yetijoe
cd /opt/yetijoe
git clone git@github.com:yetijoe/aws_setup.git
