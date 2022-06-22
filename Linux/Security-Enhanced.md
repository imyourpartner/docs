# Security-Enhanced Linux (`SELinux`)

Security-Enhanced Linux (SELinux) es una arquitectura de seguridad para sistemas Linux® que permite a los administradores tener más control sobre quién puede acceder al sistema. Fue desarrollado originalmente por la Agencia de Seguridad Nacional de los Estados Unidos (NSA) como una serie de parches para el kernel de Linux utilizando Módulos de Seguridad de Linux (LSM).

SELinux se lanzó a la comunidad de código abierto en 2000 y se integró en el kernel de Linux ascendente en 2003.

# ¿Cómo funciona SELinux?

SELinux define controles de acceso para las aplicaciones, procesos y archivos en un sistema. Utiliza políticas de seguridad, que son un conjunto de reglas que le dicen a SELinux a qué se puede o no acceder, para hacer cumplir el acceso permitido por una política.

Cuando una aplicación o proceso, conocido como sujeto, realiza una solicitud para acceder a un objeto, como un archivo, SELinux verifica con un caché de vector de acceso (AVC), donde se almacenan en caché los permisos para sujetos y objetos.

Si SELinux no puede tomar una decisión sobre el acceso en función de los permisos almacenados en caché, envía la solicitud al servidor de seguridad. El servidor de seguridad comprueba el contexto de seguridad de la aplicación o el proceso y el archivo. El contexto de seguridad se aplica desde la base de datos de políticas de SELinux. Entonces se concede o deniega el permiso.

Si se deniega el permiso, aparecerá un mensaje "avc: denegado" en /var/log.messages.

## Listar puertos

```
semanage port -l
```

## Listar por tipo de puerto

```
semanage port -l | grep ssh_port_t
```

## Agregar puerto

```
semanage port -a -t ssh_port_t -p tcp 2222
```

## Eliminar puerto

```
semanage port -d -p tcp 2222
```
