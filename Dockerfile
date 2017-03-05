FROM alpine:latest

MAINTAINER Kai Kodama

RUN apk --no-cache add \
  bash

WORKDIR "/usr/src/app"

CMD ["/bin/bash"]
