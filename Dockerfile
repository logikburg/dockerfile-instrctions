FROM  ubuntu:14.04
MAINTAINER sandeep.mogla@gmail.com

RUN apt-get update && \
    apt-get install -y curl

COPY README.md README.md

ENV PATH /usr/local/bin:$PATH

EXPOSE 8080

CMD ["curl", "http://www.google.com"]