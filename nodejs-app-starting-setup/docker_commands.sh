#!/bin/bash

# comando docker run pra forçar o download da imagem do node
docker run node

# comando docker ps (processors) -a (all)
# lista todos os processors (containers) rodando
docker ps -a

# Comando para construir a imagem Docker
# -t ou -tag define o nome e opcionalmente a tag da imagem criada
docker build -t first-demo-starting-image .

# repetindo o comando run com -it (interativo) pra abrir o shell
docker run node -it

# Comando para iniciar o contêiner
# --detach	-d		Run container in background and print container ID
# --name			Assign a name to the container
# --publish	-p		Publish a container's port(s) to the host
docker run -p 3000:3000 -d --name first-demo-starting-container first-demo-starting-image 

sleep 2m

docker stop first-demo-starting-container

