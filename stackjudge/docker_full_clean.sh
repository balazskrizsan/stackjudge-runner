
docker rmi $(docker images -a -q) -f
docker rm $(docker ps -q)
