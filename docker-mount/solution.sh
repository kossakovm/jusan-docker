wget https://stepik.org/media/attachments/lesson/686238/jusan-docker-mount.conf
wget https://stepik.org/media/attachments/lesson/686238/jusan-docker-mount.zip
unzip jusan-docker-mount.zip -d example
docker run \
  -d \
  -it \
  -p 9999:80 \
  --name jusan-docker-mount \
  -v "$(pwd)"/jusan-docker-mount.conf:/etc/nginx/conf.d/jusan-docker-mount.conf \
  -v "$(pwd)"/example/jusan-docker-mount/:/usr/share/nginx/html/ \
  nginx:mainline



