FROM ubuntu:15.10
MAINTAINER sandeep.mogla@gmail.com Sandeep Mogla

# change the source to pull from the HK archive to speed up the process
RUN sed -i 's/http:\/\/archive\./http:\/\/jp\.archive\./g' /etc/apt/sources.list
RUN apt-get update \
    && apt-get install -y build-essential git wget curl man \
        vim colord telnet iputils-ping zsh sudo
