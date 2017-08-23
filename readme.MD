 # Node http-server

Docker image that runs the node application [http-server](https://www.npmjs.com/package/http-server) exposing the `/public` directory at port `8080`.

How to run it:

```
docker run --rm -ti -p 8080:8080 --name http-server -v DIRECTORY_TO_EXPOSE:/public winhong/docker-http-server
```

Build command 
docker build -t 10.0.2.50/wh-cicd/docker-http-server .
docker push 10.0.2.50/wh-cicd/docker-http-server