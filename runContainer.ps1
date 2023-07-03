docker build ./src -t apuminer-imager

docker run -d -p 5000:5000 --name apuminer-container apuminer-image

