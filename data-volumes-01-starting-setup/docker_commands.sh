docker stop data-volumes-container
docker rm data-volumes-container
docker rmi data-volumes-image:latest

docker build -t data-volumes-image:latest .

# -d detached
# --name nome do container
# --rm auto remove quando o container é parado
# -v <nome_do_volume>:<path_dentro_do_container>
# serve pra criar um volume nomeado ou um bind mount
# vamos adicionar a tag :ro que significa read only
# com isso todo o path inside /app passa a ser read only e com isso
# nem mesmo o nodejs consegue gravar/escrever nos arquivos dentro desse path
# o problema é que existem pastas onde eu quero que o JS crie arquivos /temp e /feedback
# para contornar este problema criamos novamente um volume anonimo nestes path's
# o volume anonimo sobre escreve a regra do read only no path
# docker run -p 3000:80 -d --name data-volumes-container -v feedback_volume:/app/feedback -v "D:\Gabriel\Documentos\DockerCourse\data-volumes-01-starting-setup":/app:ro --rm data-volumes-image

# --env sobreescreve a PORT 80 do Dockerfile
# -e também funciona
# multiplas variaveis pode ser definidas com múltiplos -e KEY=Value
# docker run -p 3000:8000 -d --name data-volumes-container -e PORT=8000 -v feedback_volume:/app/feedback -v "D:\Gabriel\Documentos\DockerCourse\data-volumes-01-starting-setup":/app:ro --rm data-volumes-image

# --env-file ./.env pode ser usado para ter um arquivo .env com as variáveis do docker
docker run -p 3000:8000 -d --name data-volumes-container --env-file ./.env -v feedback_volume:/app/feedback -v "D:\Gabriel\Documentos\DockerCourse\data-volumes-01-starting-setup":/app:ro --rm data-volumes-image

# lista todos os volumes
docker volume ls

# inspeciona e traz informações sobre o volume
docker volume inspect feedback_volume

# remove um volume
# docker volume rm <volume_name>