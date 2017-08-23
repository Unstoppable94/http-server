
docker run --restart always -d -ti -p 8080:8080 --name http-server -v /home/harbor/releasefile:/public \
	10.0.2.50/wh-cicd/docker-http-server 
curl localhost:8080/docker-compose.yml