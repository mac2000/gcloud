Dockerized gcloud

# Build and publish

    docker build -t mac2000/gcloud .
    docker login
    docker push mac2000/gcloud:latest

# Usage

    docker run -it --rm --name=rualogs -v ${PWD}:/code -w /code mac2000/gcloud bash

# TODO

Credentials are stored at `~/.config`, also `~/.boto` stres configuration

That files may be stored locally and used later to skip `gcloud init`