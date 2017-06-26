# This is not meant to only be a refrence and a checklist. This should not actually be run at any time
# $1 - User 
# $2 - Group


sudo -G $2 useradd -d /home/$1 $1
sudo mkdir /home/$1
sudo chown $1:$1 -R /home/$1
