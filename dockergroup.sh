sudo groupadd docker
#sudo gpasswd -a  ${UAER} docker`
sudo usermod -aG docker dev
systemctl restart docker
#change group to docker
newgrp docker 
