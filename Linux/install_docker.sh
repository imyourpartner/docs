#####   DOCKER

#01 Set up the repository
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

#02 Install Docker Engine
sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin
systemctl enable docker
systemctl start docker
#03 Create a group docker
groupadd docker