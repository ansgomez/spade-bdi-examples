# Docker-Based SPADE-BDI Examples

## Build Docker Images

Use the following command to build the `spade-server` image

`docker-compose up --build`

and build the `spade-app` image:

`docker build --platform linux/amd64 -f docker/spade-bdi.Dockerfile -t spade-app .`

## Run Images

After the `spade-server` image has been built, you can start/stop/restart its docker compose services:

`docker-compose start spade-server-service`
`docker-compose stop spade-server-service`
`docker-compose restart spade-server-service`

## Running SPADE-APP container

Once the docker compose service is running, navigate to the example you wish to run, and use the spade-app container to run the code. You should load the example's directory into the container's `/app` folder. 

``docker run --platform=linux/amd64 -it --rm -v `pwd`:/app spade-app bash``

Once inside the container, go the example folder and run it:

`python3 run_example.py --server host.docker.internal --password pass`

The "host.docker.internal" allows it to connect to the xmpp server running on the `spade-server` container.

## Running ALL examples

Once running inside the docker container, navigate to the `src/` directory and run:

``python3 run_all.py --server host.docker.internal --password pass``

## Runnone SINGLE example directly from folder

Use the following command: 

``docker run --platform=linux/amd64 -it --rm -v `pwd`:/app spade-app python3 run_example.py --server host.docker.internal --password pass``

# Sources

Sample BDI code originally from: https://github.com/javipalanca/spade_bdi/