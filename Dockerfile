FROM python:alpine
RUN apk add --update \
    sudo \
    curl
    
RUN addgroup\
    -g 1000 \
    zuul
RUN adduser \
    -h /home/zuul \
    -u 1000 \
    -G zuul \
    -D \
    zuul

RUN echo "zuul ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/zuul

USER zuul
WORKDIR /home/zuul
