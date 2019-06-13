FROM python:3

WORKDIR /usr/src/app

RUN apt-get update

CMD ["echo", "Hello World...! From my first docker image"]