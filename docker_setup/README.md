# Dependancies on DockerHub
This setup depends on DockerHub. if you don't have an account create one at: [DockerHub](https://hub.docker.com/)

Once complete in your shell:
`docker login`


If you get an error like the one below:
```
Warning: failed to get default registry endpoint from daemon (Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.27/info: dial unix /var/run/docker.sock: connect: permission denied). Using system default: https://index.docker.io/v1/
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username:
Password:
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Post http://%2Fvar%2Frun%2Fdocker.sock/v1.27/auth: dial unix /var/run/docker.sock: connect: permission denied
```

Ensure your user is part of the docker group:
`sudo usermod -aG docker <username>`

What you should see will look like this:
```
docker login                                                                                                                                                                                                       ubuntu@ip-172-31-22-54
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username: 
Password:
Login Succeeded
```
