
docker container rm -f app-container
docker image rm app-image

docker build . -t app-image
docker run -d -p 5000:5000 --name apuminer-container app-container


