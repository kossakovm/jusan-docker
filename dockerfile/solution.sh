wget https://stepik.org/media/attachments/lesson/686238/jusan-dockerfile.conf
wget https://stepik.org/media/attachments/lesson/686238/jusan-dockerfile.zip
unzip jusan-dockerfile.zip -d jusan-dockerfile
touch Dockerfile
echo 'FROM nginx:mainline' >> Dockerfile
echo 'COPY jusan-dockerfile.conf /etc/nginx/conf.d/jusan-dockerfile.conf' >> Dockerfile
echo 'COPY jusan-dockerfile /usr/share/nginx/html' >> Dockerfile
docker build -t nginx:jusan-dockerfile .
docker run -d --name jusan-dockerfile -p 6060:80 nginx:jusan-dockerfile

