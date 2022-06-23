# Docker documentacion

## Listar imagenes descargadas

```
docker images
```

## Listar contenedores en ejecucion

```
docker ps
```

## Listar contenedores en cualquier estado

```
docker ps -a
```

## Eliminar una imagen descargada

```
docker rmi #DeLaimagen
```

## Eliminar un contenedor

```
docker rm 9dd2e -f
```

## Ingresar a un contenedor

```
docker exec -it #idContenedor
```

## Crear una contenedor a partir de una imagen local

-d no cierra el contenedor
--name asigna un nombre al contenedor
ID de la imagen

```
docker run -d --name webserver 8da6s5d4wdasd4
```

## Crear una contenedor a partir de una imagen local

-d no cierra el contenedor
--name asigna un nombre al contenedor
ID de la imagen

```
docker run -d --name webserver httpd-alpine
```

## Inspeccionar un contenedor

```
docker container inspect 723b2fe61ad4
```

## Inspeccionar un contenedor v2

```
docker exec unruffled_meninsky cat /etc/hosts
```

## Estadisticas de consumo de hardware de un contenedor

```
docker container stats #img
```

## Crear red

```
docker network create mired
```

## Inspeccionar red

```
docker network inspect miredf
```

## Listar redes

```
docker network ls
```

## Crear contenedor en una red especifica

```
docker run -d --name mi_servidor --network mired -p 80:80 josedom24/aplicacionweb:v1
```

docker run -d -p 80:8080 -p 50000:50000 --restart=on-failure jenkins/jenkins:lts-jdk11

https://www.edureka.co/blog/docker-commands/
https://docs.docker.com/engine/reference/commandline/compose_ls/

docker run -d \
 --name jellyfin \
 --user 1005:1005 \
 --net=host \
 --volume /home/cinema/jellyfin/config:/config \
 --volume /home/cinema/jellyfin/cache:/cache \
 --mount type=bind,source=/home/cinema/jellyfin/media,target=/media \
 --restart=unless-stopped \
 jellyfin/jellyfin
