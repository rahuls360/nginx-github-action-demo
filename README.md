## Helpful commands

`docker ps` -> shows running containers

`docker images` -> shows docker images

`docker build -t imageName .` -> builds the docker image using Dockerfile. Tags the image with specified name. Builds the current folder

`docker run -itd -p 80:3000 --name container-name imageName` -> creates a docker containers (running a docker image), in interactive mode with detached terminal(you can continue using the same terminal for other commands). Left port -> My computer/server port. Right port -> Port of the docker container to expose. --name mentions the container name. We also specify the image name to run.