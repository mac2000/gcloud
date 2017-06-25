Dockerized gcloud

# Build and publish

    docker build -t mac2000/gcloud .
    docker login
    docker push mac2000/gcloud:latest

# Usage

    docker run -it --rm --name=rualogs -v ${PWD}:/code -w /code mac2000/gcloud bash

# Credentials

After performing `gcloud init` your credentials are stored at `~/.config`, also `~/.boto` stores configuration

That files may be stored locally and used later, e.g.:

    docker cp rualogs:/root/.boto .
    docker cp rualogs:/root/.config .
    mv .boto /some/where/boto
    mv .config /some/where/config

Then

    docker run -it --rm --name=rualogs -v ${PWD}:/code -w /code -v /some/where/boto:/root/.boto -v
 /some/where/config:/root/.config mac2000/gcloud bash
