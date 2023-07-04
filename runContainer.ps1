
docker build . -t apuminer-image

docker run -d -p 5000:5000 --name apuminer-container apuminer-image

