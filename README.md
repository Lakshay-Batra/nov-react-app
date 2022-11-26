# Repo optimizing Docker image for a react app with every commit

> Run the scripts mentioned below for each commit to see the reduction in the size of docker image.

## Available Scripts

In the project directory, you can run:

### `docker build -t <image_name> .`

To build the image.

### `docker images`

To list all docker images on the system and view their size.

### `docker run -p <host_port>:<container_port> -it <image_name>`

To run docker container for the image.
