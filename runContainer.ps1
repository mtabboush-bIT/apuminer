docker build ./Dockerfile -t apuminerImager

docker run -d -p 5000:5000 --name apuminerContainer apuminerImage

