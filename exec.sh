docker stop $(docker ps -a -q)
docker rm   $(docker ps -a -q)
docker build -t hero-api-server .
docker run -dit -p 8080:80 --name hero-api-server-run hero-api-server

docker run --rm -it -v "$PWD:/usr/src/app" -p 3000:3000 --name app hero-api-server bash
