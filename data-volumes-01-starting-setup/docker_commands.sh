docker build -t data-volumes-image:latest .

docker run -p 3000:80 -d --name data-volumes-container --rm data-volumes-image