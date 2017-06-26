# Quick start for Jupyter Notebooks

## TL;DR
```
# assumes that docker is installed; if not do that
# assumes that docker login has been run for docker hub
git clone git@github.com:yetijoe/aws_setup.git
pip install --update pip
pip install docker-compose
sudo python /opt/yetijoe/notebook_setup/file_system_prereq.py   # <<< This is still a bit hacky. See assumptions below if this fails
cd /opt/yetijoe/notebook_setup/
docker-compose --up   # or docker-compose --up -d
```

## Assumptions:
1. There is a directory where ipynb's will be placed: `/var/notebooks`
 1. This will be owned by the user running docker
 2. VERY STRONG ASSUMPTION: that user is `parallels`
2. The location that you are cloning this directory to is: `/opt/yetijoe/`
 1. `sudo mkdir /opt/yetijoe/ && sudo chown -R parallels:parallels /opt/yetijoe`
 
## Disclaimer
This was put together in a hurry. YMMV.
