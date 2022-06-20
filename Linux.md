# Liux Server Documentacion

## Comandos

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
