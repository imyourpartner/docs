# Liux Server Documentacion
## Instalacion
```
sudo dnf upgrade --refresh -y
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf groupupdate core -y
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
sudo dnf groupupdate sound-and-video -y
sudo dnf install rpmfusion-free-release-tainted -y
sudo dnf install libdvdcss -y
sudo dnf install rpmfusion-nonfree-release-tainted -y
sudo dnf upgrade --refresh -y
sudo dnf install \*-firmware -y
dnf install jellyfin -y
```
## Comandos
### Administracion de usuarios

#### Crear usuario
```
useradd <username>
```
#### Establecer Contraseña
```
passwd <username>
```


### Actualizar sistema
```
sudo dnf upgrade --refresh -y
```

### top

El comando `top muestra datos relacionados con el rendimiento del sistema. Por defecto se actualiza cada 5 segundos.
top permite ordenar el resultado mostrado, eligiendo el campo deseado para el filtro. En este caso elegiremos el campo de CPU : %CPU
 

Para usar el filtrado por campos, debemos usar el parámetro -o, y el nombre del campo:

top -o %CPU




## Servicios:
### SSH
Paquetes OpenSSH Servidor y cliente 
```
sudo dnf upgrade --refresh -y
dnf -y install openssh-server openssh-clients
sudo systemctl enable sshd.service
sudo systemctl start sshd.service
sudo systemctl disable sshd --now
sudo systemctl enable sshd --now
sudo systemctl status sshd
```


https://linuxhint.com/install_ubuntu_windows_10_wsl/
 sudo apt install htop

 Open cmd.exe
Type wsl -u root
Type passwd username and change the password
Type exit
Type wsl
Type sudo echo hi to confirm the new password work
wsl --list
wsl -d Ubuntu-20.04 --user root