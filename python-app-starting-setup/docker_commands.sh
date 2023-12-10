docker build -t python-app-image .

docker rm python-app-container

# repetindo o comando run com -it (interativo) pra abrir o shell
docker run -it --name python-app-container python-app-image

docker start -a -i python-app-container

# remove todas imagens que não estão sendo usadas
# docker image prune