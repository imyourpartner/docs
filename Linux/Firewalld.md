# FIREWALLD

### Estado del servicio

```
firewall-cmd --state
```

### Listar serivicios del `Firewalld`

```
firewall-cmd --list-services
```

### Obtener la zona en la que esta trabajando el `Firewalld`

```
firewall-cmd --get-default-zone
```

### Cambiar de zona

```
firewall-cmd --set-default-zone=home
```

### Detalle del servicio `Firewalld`

```
systemctl status firewalld
```

### Iniciar servicios de `Firewalld`

```
systemctl start firewalld
```

### Detener servicio de `Firewalld`

```
systemctl stop firewalld
```

### Comenzar servicio al iniciar s.o

```
systemctl enable firewalld
```

### Detener servicio al iniciar s.o

```
systemctl disable firewalld
```

### `Abrir puertos` en `Firewalld`

```
firewall-cmd --zone=home --permanent --add-port=9090/tcp
firewall-cmd --reload
```

### `Cerrar puertos` en `Firewalld`

```
firewall-cmd --zone=home --permanent --remove-port=80/tcp
firewall-cmd --reload
```

### Listar puertos

```
firewall-cmd --zone=home --list-all
```

### Lista de puerto

```
firewall-cmd --zone=home --list-ports
```

### Listar puertos por nombre de servicio

```
grep ssh /etc/services
```

### listar servicios

```
firewall-cmd --zone=home --list-services
```

## Tiempo de ejecución y configuraciones permanentes

Cualquier cambio realizado mientras se ejecuta firewalld se perderá cuando se reinicie firewalld. Cuando se reinicia firewalld, la configuración vuelve a sus valores permanentes.

Se dice que estos cambios se realizan en modo de tiempo de ejecución .

Para que los cambios sean persistentes en los reinicios, aplíquelos nuevamente usando la opción `--permanent`. Alternativamente, para hacer que los cambios sean persistentes mientras se ejecuta firewalld, use la opción. `--runtime-to-permanent firewall-cmd`

Si realiza cambios mientras firewalld se está ejecutando usando solo la opción `--permanent`, no se harán efectivos hasta que se reinicie firewalld. Sin embargo, reiniciar firewalld detiene brevemente el tráfico de red, lo que provoca una interrupción en su sistema.

```
firewall-cmd --list-services
```

#####

- Iniciar servicio de firewall

```status
systemctl start firewalld
```

- Status del firewall

```
systemctl status firewalld
```

systemctl enable firewalld
systemctl disable firewalld

firewall-cmd --add-port=7946/tcp --permanent
firewall-cmd --add-port=7946/udp --permanent
firewall-cmd --reload

## SE-LINUX

https://tecadmin.net/how-to-disable-selinux-on-fedora/
sestatus
sudo setenforce 0
sudo setenforce Permissive

https://www.digitalocean.com/community/tutorials/how-to-configure-the-linux-firewall-for-docker-swarm-on-centos-7

https://linuxopsys.com/topics/linux-file-permissions

## otros

sudo fdisk -l
$ sudo mkdir /mnt/USB
sudo mount /dev/sdb1 /mnt/USB/
https://www.linuxfordevices.com/tutorials/linux/mount-usb-drives-in-linux

### LINKS

https://blog.alcancelibre.org/staticpages/index.php/como-firewalld

firewall-cmd">firewall-cmd --list-all --permanent

Fuente: https://www.enmimaquinafunciona.com/pregunta/165010/por-que-firewall-cmd-arroja-el-error-quotalready_enabledquot-pero-el-puerto-no-aparece-en-la-lista-cuando-se-llama-a-firewall-cmd---list-ports

sudo firewall-cmd --permanent --zone=public --add-port=80/tcp
