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