
##### SERVIDOR
# actualizaciones
dnf update -y
# cambiar de zona a home
firewall-cmd --set-default-zone=home

######  PACKAGES
dnf -y install openssh-server 
dnf -y install wget
dnf -y install iptables
dnf -y install fuse-overlayfs
######  OPENSSH
# Eliminar puerto por defecto `22` servicio ssh
firewall-cmd --permanent --remove-service=ssh
# Nuevo puerto para el serivicio ssh
firewall-cmd --permanent --zone=home --add-port=812/tcp
firewall-cmd --reload
systemctl enable sshd.service
systemctl start sshd.service
systemctl restart sshd.service
###################################


######  SERVICIOS
print("0.SERVICIOS INSTALADOS...")
# openssh
systemctl status sshd
