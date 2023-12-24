docker build . -t node-util

docker run -it -v "D:\Gabriel\Documentos\DockerCourse\utility-containers":/app node-util init

docker run -it -v "D:\Gabriel\Documentos\DockerCourse\utility-containers":/app node-util install express --save

# docker-compose exec
# or
docker-compose run --rm npm init