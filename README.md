# Docker cheat sheet

## Terminology

- **Images** are the blueprints of the application
  which form the containers.
  You `docker pull` an image.
- **Containers** are created images.
  They run the actual application.
  You create a container using `docker run`.
  You see containers using `docker ps`.
- **Daemon** is the background service that managest the containers.
- **Client** is the command line tool that allows interaction with the daemon.
- **Docker Hub** is a registry of Docker images.

## Images

- Base images have no parent images.
  Examples: `ubuntu`, `busybox`, `debian`.
- Child images build upon parents
- **Official images** are managed and supported by Docker.
  Typically one word long.
  Examples: `python`, `ubuntu`, `busybox`, `hello-world`
- **User images** are created and shared by users.
  Typicallly formatted as `user/user-image`.

## Commands

### `docker run [IMAGE]`

Pulls and runs image.

- `docker run -it` to run interactive
- `docker run -it sh` to run shell commands inside container
- `docker --rm` removes the container once run
- `docker --detatch` will let container run in the background
- `docker --publish-all` will publish all exposed ports to random ports
- `docker --name` to name container
- `docker run --port 8888:80` to specify a custom port
  Ports are in the format of `LOCAL_PORT:DOCKERFILE_PORT`
- `docker stop [ID]/[NAME]` to stop a running container

### `docker pull [IMAGE]`

Pulls image.
Specify version as such `docker pull ubuntu:18.04`

### `docker ps`

List running containers.

- `docker ps --all` to list all containers.

### `docker rm`

Clean up containers once done.
Use ids from `docker ps -a`.

### `docker container prune`

Remove all docker images

### `docker rmi`

Delete images.

### `docker port`

`docker port [CONTAINER]` to see all ports

### `docker search`

Search for images

### `docker build`

Build docker image.
`docker build --tag username/project-name .`
to add tag name.

### `docker push [IMAGE]`

To push Docker image to Docker Hub.

