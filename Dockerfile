FROM ubuntu:xenial
MAINTAINER Alexandr Marchenko <marchenko.alexandr@gmail.com>

RUN apt-get update -qq && apt-get install lsb-release python python-pip curl -qq -y
RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-xenial main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN apt-get update -qq && apt-get install google-cloud-sdk -y