docker build -t jusan-fastapi-final:dockerized .
docker images
docker run -d --name jusan-dockerize -p 8080:8080 jusan-fastapi-final:dockerize 
