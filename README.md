Trying out running a python app inside a Docker container.

Initial setup was based on:

https://www.docker.com/blog/containerized-python-development-part-1/

If we build the Docker image like so:

```docker build -t myimage .```

Then, based on instructions from:

https://hub.docker.com/r/aquasec/trivy/

we can have a Trivy scan to check the Docker image, like so:

```docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/Library/Caches:/root/.cache/ aquasec/trivy myimage```

