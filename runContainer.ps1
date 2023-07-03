docker build ./Dockerfile --name apuminerImager

docker run -d -p 5000:5000 --name apuminerContainer apuminerImage

