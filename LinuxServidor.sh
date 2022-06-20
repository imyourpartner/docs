sudo dnf upgrade --refresh -y
dnf -y install openssh-server openssh-clients
sudo systemctl enable sshd.service
sudo systemctl start sshd.service
sudo systemctl disable sshd --now
sudo systemctl enable sshd --now
sudo systemctl status sshd
