brew install wget
wget https://stepik.org/media/attachments/lesson/691221/nginx.conf
docker run -d --name jusan-docker-bind -p 7777:80 --mount type=bind,source="$(pwd)"/nginx.conf,target=/etc/nginx/nginx.conf nginx:mainline
curl http://localhost:7777
docker ps
docker logs jusan-docker-bind
docker ps 
