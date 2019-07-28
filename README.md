# Docker Python Example

A simple example of using Docker with Python.

## Overview

This example uses a [Dockerfile](./Dockerfile) to define the Docker image based on
one of the official Python images. The application is a Flask
"Hello World" application in [app.py](./app.py). Requirements are
defined in [Pipfile](./Pipfile).


## Building and Running the Example

### Build:

```bash
docker build -t docker-python-example .
```

### Run:

```bash
docker run --rm -p8080:80 docker-python-example
```

### Test:

Open the URL [http://localhost:8080](http://localhost:8080)

This will work on most systems. You may have to usd a alternate URL based
on your Docker networking implementation.

## License

Please see the projects [LICENSE](./LICENSE) file.