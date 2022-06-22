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

docker run -d -p 8080:80 --name webserver httpd
docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag

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
