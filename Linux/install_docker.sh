#####   DOCKER
groupadd docker
usermod -aG docker cine
# Set up the repository
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

# Install Docker Engine
sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
systemctl enable docker.service
systemctl enable containerd.service
systemctl start docker.service
systemctl start docker.service
