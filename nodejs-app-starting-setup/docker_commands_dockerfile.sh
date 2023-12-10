# Aula 22 - Buildando a imagem
docker build -t academind-nodejs-webserver-image .

docker run -p 80:80 -d --name academind-nodejs-webserver-container academind-nodejs-webserver-image 

sleep 2m

docker stop academind-nodejs-webserver-container

# docker rm remove um container
docker rm academind-nodejs-webserver-container

# docker rmi remove uma imagem
docker rmi academind-nodejs-webserver-image

# docker run cria um novo container
# docker start inicia um container já criado e que tenha sido parado

# ao invés de rodar o terminal attached ao docker container
# é possivel usar o comando docker logs para ver os prints do console

# --rm remove o container quando ele não é mais usado