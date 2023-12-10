docker stop data-volumes-container
docker rm data-volumes-container
docker rmi data-volumes-image:latest

docker build -t data-volumes-image:latest .

# -d detached
# --name nome do container
# --rm auto remove quando o container é parado
# -v <nome_do_volume>:<path_dentro_do_container>
# serve pra criar um volume nomeado ou um bind mount
docker run -p 3000:80 -d --name data-volumes-container -v feedback_volume:/app/feedback -v "D:\Gabriel\Documentos\DockerCourse\data-volumes-01-starting-setup":/app --rm data-volumes-image
