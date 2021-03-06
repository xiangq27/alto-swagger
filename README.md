# Swagger generated server

> **NOTE:** Check the OpenAPI specification in
[![branch spec](https://img.shields.io/badge/branch-spec-blue.svg)](https://github.com/openalto/alto-swagger/tree/spec).

[![Travis status](https://img.shields.io/travis/openalto/alto-swagger.svg)](https://travis-ci.org/openalto/alto-swagger)

## Overview
This server was generated by the [swagger-codegen](https://github.com/swagger-api/swagger-codegen) project. By using the
[OpenAPI-Spec](https://github.com/swagger-api/swagger-core/wiki) from a remote server, you can easily generate a server stub.  This
is an example of building a swagger-enabled Flask server.

This example uses the [Connexion](https://github.com/zalando/connexion) library on top of Flask.

## Requirements
Python 3.5.2+

## Usage
To run the server, please execute the following from the root directory:

```
pip3 install -r requirements.txt
# start a mock server by default
python3 -m unicorn_server

# you can specify a controller as backend
python3 -m unicorn_server -B kytos
```

and open your browser to here:

```
http://localhost:9000/v1/unicorn/ui/
```

Your Swagger definition lives here:

```
http://localhost:9000/v1/unicorn/swagger.json
```

To launch the integration tests, use tox:
```
sudo pip install tox
tox
```

## Running with Docker

To run the server on a Docker container, please execute the following from the root directory:

```bash
# building the image
docker build -t unicorn_server .

# starting up a container
docker run -p 9000:9000 unicorn_server
```

## For Developer

If you modified the api specification, you can run `make` from the root
directory to regenerate the model files:

```bash
# run make directly will download swagger-codegen to .bin
make

# or you can specify the exec path of your existing swagger-codegen to void
# downloading the binary of swagger-codegen
SWAGGER_EXEC=swagger-codegen make
```
