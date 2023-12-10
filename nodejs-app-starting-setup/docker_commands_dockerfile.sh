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

# te permite inspecionar parametros e configurações da imagem
docker inspect python 

# me permite copiar algo da minha máquina para o container e vice-versa
docker cp python-app-container:/app/rng.py python-app-starting-setup/cpy/

# comando pra renomear uma imagem 
docker tag node-demo:latest academind/node-hello-world

# envia a imagem para o docker hub
docker push academind/node-hello-world

# logar no docker hub
docker login

# puxa a imagem do docker hub da academind pra minha máquina local
docker pull academind/node-hello-world

docker run -p 8000:3000 -rm academind/node-hello-world 