docker run -d --name jsn-dkr-run -p 8888:80 nginx:mainline
docker ps
curl http://localhost:8888
docker stop jsn-dkr-run
docker ps
docker ps -a
bash tester-docker-run.sh 
