## FIREWALL
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