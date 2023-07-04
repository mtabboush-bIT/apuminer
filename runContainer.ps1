docker image rm $(docker image ls -q)
docker container rm $(doocker container ls -q)

docker build . -t apuminer-image

docker run -d -p 5000:5000 --name apuminer-container apuminer-image

